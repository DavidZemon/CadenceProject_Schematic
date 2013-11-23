#/usr/bin/python3
"""
@file           Cadence_TB.py
@author         David Zemon
@project        TestBenchCreator
@description

Created with: PyCharm Community Edition
"""
from sys import stdout
from io import TextIOBase

INIT = 'simulator lang=spectre\n'
COMMENTS = {"vars": "//\n// Variables\n", "tests": "//\n// Tests\n"}
GND = '0  '
NEWLINE = '//\n'


def initVar(var):
    assert (isinstance(var, (list, tuple)))
    assert (isinstance(var[0], str))
    assert (isinstance(var[1], str))

    return "parameters %s = %s\n" % (var[0], var[1])


def initVars(manyVars):
    assert (isinstance(manyVars, list))
    s = COMMENTS["vars"]
    for var in manyVars:
        s += initVar(var)
    return s


class Wire(object):
    def __init__(self, name, pNode):
        assert (isinstance(name, str))
        assert (isinstance(pNode, str))

        self.name = name
        self.pNode = pNode
        self.values = []
        self.times = []

    def set(self, value):
        assert (value in [0, 1])

        if value:
            self.values.append("VCC")
        else:
            self.values.append(GND)

    def extend(self, duration):
        assert (isinstance(duration, int))

        self.values.append(self.values[-1])

    def dump(self):
        wireStr = self.name + ' '
        wireStr += "(%s %s) " % (self.pNode, GND)
        wireStr += "vsource type=pwl wave="

        waveStr = ''
        for i in range(len(self.values)):
            waveStr += "%i*STEP %s %i*STEP-T_RF %s " % (i, self.values[i], i + 1, self.values[i])

        return "%s[%s]\n" % (wireStr, waveStr)


class Bus(object):
    def __init__(self, name, width):
        assert (isinstance(name, str))
        assert (isinstance(width, int))

        self.width = width
        self.wires = []
        for i in range(width):
            self.wires.append(Wire(name + str(i), "%s\\<%i\\>" % (name, i)))

    def set(self, value):
        assert (isinstance(value, int))
        assert (value < pow(2, self.width))

        for wire in self.wires:
            wire.set(value >> self.wires.index(wire) & 0x01)

    def extend(self, duration):
        for wire in self.wires:
            wire.extend(duration)

    def dump(self):
        s = ''
        for wire in self.wires:
            s += wire.dump()

        return s


class TestUnit(object):
    def __init__(self, vcc, step, t_rf):
        self.vcc = vcc
        self.step = step
        self.t_rf = t_rf

    def start(self, filename):
        return INIT + "// File: %s\n" % filename + initVars([self.vcc, self.step, self.t_rf])


class AdderSubtractor(TestUnit):
    def __init__(self, vcc, step, t_rf):
        super().__init__(vcc, step, t_rf)
        self.a = Bus('A', 4)
        self.b = Bus('B', 4)
        self.ci = Wire('Ci', 'Ci')
        self.op = Wire('op', 'op')

    def add(self, a, b, ci):
        self.a.set(a)
        self.b.set(b)
        self.ci.set(ci)
        self.op.set(0)

    def sub(self, a, b):
        self.a.set(a)
        self.b.set(b)
        self.ci.set(0)
        self.op.set(1)

    def dump(self):
        aStr = self.a.dump()
        bStr = self.b.dump()
        ciStr = self.ci.dump()
        opStr = self.op.dump()

        return aStr + NEWLINE + bStr + NEWLINE + ciStr + opStr


class Mux_1b_2to1(TestUnit):
    def __init__(self, vcc, step, t_rf):
        super().__init__(vcc, step, t_rf)
        self.a = Wire('A', 'A')
        self.b = Wire('B', 'A')
        self.s = Wire('S', 'S')

    def set(self, a, b, s):
        self.a.set(a)
        self.b.set(b)
        self.s.set(s)

    def dump(self):
        return self.a.dump() + self.b.dump() + self.s.dump()


def testAdderSubtracter(out, filename):
    assert (isinstance(out, TextIOBase))

    VCC = ['VCC', '1.8']
    STEP = ['STEP', '10u']
    T_RF = ['T_RF', '10p']

    box = AdderSubtractor(VCC, STEP, T_RF)
    box.add(0x0, 0x0, 0)
    box.add(0x5, 0x1, 1)

    out.write(box.start(filename))
    out.write(box.dump())


def test_mux_1b_2to1(out, filename):
    assert (isinstance(out, TextIOBase))

    VCC = ['VCC', '1.8']
    STEP = ['STEP', '10u']
    T_RF = ['T_RF', '10p']

    box = Mux_1b_2to1(VCC, STEP, T_RF)
    box.set(0, 0, 0)
    box.set(1, 0, 0)
    box.set(0, 1, 0)
    box.set(1, 1, 0)

    box.set(0, 0, 1)
    box.set(1, 0, 1)
    box.set(0, 1, 1)
    box.set(1, 1, 1)



    out.write(box.start(filename))
    out.write(box.dump())

if "__main__" == __name__:
    adderSubtracter_name = "adderSubtracter_tb.txt"
    adderSubtracter_f = open(adderSubtracter_name, 'w')
    testAdderSubtracter(adderSubtracter_f, adderSubtracter_name)

    mux_1b_2to1_name = "mux_1b_2to1_name_tb.txt"
    mux_1b_2to1_f = open(mux_1b_2to1_name, 'w')
    test_mux_1b_2to1(mux_1b_2to1_f, mux_1b_2to1_name)
