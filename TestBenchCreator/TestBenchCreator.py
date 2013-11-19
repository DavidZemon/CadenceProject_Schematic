#/usr/bin/python
# File:    TestBenchCreator.py
# Author:  David Zemon
# Project: TestBenchCreator
#
# Created with: PyCharm Community Edition

"""
@description:
"""

#noinspection PyUnresolvedReferences
from sys import stdout
import io


def run(value) -> str:
    assert (isinstance(value, int))

    return "run " + str(value) + '\n'


def test(output, operation):
    assert (isinstance(output, io.TextIOBase))
    output.write(operation)
    output.write(run(100))


def addWire(unit, wire) -> str:
    assert (isinstance(wire, str))

    s = ''
    s += "add wave sim:/" + unit + "/" + wire + '\n'

    return s


def addAllWires(unit, wires):
    assert (isinstance(unit, str))
    assert (isinstance(wires, list))

    s = '# Adding wires\n'
    for wire in wires:
        if isinstance(wire, list):
            s += addWire(unit, wire[0])
        else:
            s += addWire(unit, wire)

    return s


def setClock(unit, wire, period):
    assert (isinstance(unit, str))
    assert (isinstance(wire, str))
    assert (isinstance(period, int))

    return "force -drive sim:/" + unit + "/" + wire + " 0 0, 1 {" + str(period / 2) + " ps} -r " + str(period) + '\n'


def setWire(unit, wire) -> str:
    assert (isinstance(wire, str))
    return "force -drive sim:/" + unit + "/" + wire + ' 1' + '\n'


def clearWire(unit, wire) -> str:
    assert (isinstance(wire, str))
    return "force -drive sim:/" + unit + "/" + wire + ' 0' + '\n'


def writeWire(unit, wire, value) -> str:
    assert (isinstance(wire, str))
    assert (value in [0, 1])
    return "force -drive sim:/" + unit + "/" + wire + ' ' + str(value) + '\n'


def writeBus(unit, bus, value) -> str:
    assert (isinstance(bus, list))
    assert (isinstance(bus[0], str))
    assert (isinstance(bus[1], int))
    assert (value in range(pow(2, bus[1])))

    s = ''
    for i in range(bus[1]):
        s += writeWire(unit, bus[0] + '(' + str(i) + ')', value % 2)
        value >>= 1
    return s


class ALU(object):
    def __init__(self):
        self.unit = 'ALU'
        self.c = "Ci"
        self.a = ['A', 4]
        self.b = ['B', 4]
        self.op = ['Op', 3]

        self.ops = {"and": 0, "or": 1, "xnor": 2, "xor": 3, "add": 4, "sub": 5, "incA": 6, "incB": 7}

    def start(self):
        return addAllWires(self.unit, [self.op, self.c, self.a, self.b, 'F', 'Co'])

    def opAnd(self, a, b) -> str:
        s = "\n# A=0x%02X & B=0x%02X\n" % (a, b)
        s += writeBus(self.unit, self.op, self.ops["and"])
        s += writeBus(self.unit, self.a, a)
        s += writeBus(self.unit, self.b, b)
        # No need to clear carry - should be ignored

        return s

    def opOr(self, a, b) -> str:
        s = "\n# A=0x%02X | B=0x%02X\n" % (a, b)
        s += writeBus(self.unit, self.op, self.ops["or"])
        s += writeBus(self.unit, self.a, a)
        s += writeBus(self.unit, self.b, b)
        # No need to clear carry - should be ignored

        return s

    def opXnor(self, a, b) -> str:
        s = "\n# ~(A=0x%02X ^ B=0x%02X)\n" % (a, b)
        s += writeBus(self.unit, self.op, self.ops["xnor"])
        s += writeBus(self.unit, self.a, a)
        s += writeBus(self.unit, self.b, b)
        # No need to clear carry - should be ignored

        return s

    def opXor(self, a, b) -> str:
        s = "\n# A=0x%02X ^ B=0x%02X\n" % (a, b)
        s += writeBus(self.unit, self.op, self.ops["xor"])
        s += writeBus(self.unit, self.a, a)
        s += writeBus(self.unit, self.b, b)
        # No need to clear carry - should be ignored

        return s

    def opAdd(self, a, b, c) -> str:
        s = "\n# A=%u + B=%u\n" % (a, b)
        s += writeBus(self.unit, self.op, self.ops["add"])
        s += writeBus(self.unit, self.a, a)
        s += writeBus(self.unit, self.b, b)
        s += writeWire(self.unit, self.c, c)

        return s

    def opSub(self, a, b) -> str:
        s = "\n# A=%u - B=%u\n" % (a, b)
        s += writeBus(self.unit, self.op, self.ops["sub"])
        s += writeBus(self.unit, self.a, a)
        s += writeBus(self.unit, self.b, b)
        s += writeWire(self.unit, self.c, 0)

        return s

    def opIncA(self, a) -> str:
        s = "\n# A=%u + 1\n" % a
        s += writeBus(self.unit, self.op, self.ops["incA"])
        s += writeBus(self.unit, self.a, a)

        return s

    def opIncB(self, b) -> str:
        s = "\n# B=%u + 1\n" % b
        s += writeBus(self.unit, self.op, self.ops["incB"])
        s += writeBus(self.unit, self.a, b)

        return s


def testALU(out):
    assert (isinstance(out, io.TextIOBase))

    alu = ALU()

    out.write(alu.start())
    out.write(clearWire(alu.unit, alu.c))
    test(out, alu.opAnd(0, 0))
    test(out, alu.opAnd(0x5, 0xC))
    test(out, alu.opAnd(0xF, 0xF))
    test(out, alu.opOr(0, 0))
    test(out, alu.opOr(0x5, 0xC))
    test(out, alu.opOr(0xF, 0xF))
    test(out, alu.opXnor(0, 0))
    test(out, alu.opXnor(0x5, 0xC))
    test(out, alu.opXnor(0xF, 0xF))
    test(out, alu.opXor(0, 0))
    test(out, alu.opXor(0x5, 0xC))
    test(out, alu.opXor(0xF, 0xF))
    test(out, alu.opAdd(0, 0, 0))
    test(out, alu.opAdd(7, 4, 0))
    test(out, alu.opAdd(7, 3, 1))
    test(out, alu.opAdd(7, 0, 0))
    test(out, alu.opAdd(7, 0, 1))
    test(out, alu.opSub(0, 0))
    test(out, alu.opSub(7, 0))
    test(out, alu.opSub(7, 3))
    test(out, alu.opSub(0, 1))
    test(out, alu.opIncA(0))
    test(out, alu.opIncA(7))
    test(out, alu.opIncA(3))
    test(out, alu.opIncB(0))
    test(out, alu.opIncB(7))
    test(out, alu.opIncB(3))


def test_4b_2to1_mux(out):
    assert (isinstance(out, io.TextIOBase))

    unit = 'testUnit'
    a = ['A', 4]
    b = ['B', 4]
    sel = 'S'

    out.write(addAllWires(unit, [sel, a, b, 'F']))

    s = writeBus(unit, a, 0)
    s += writeBus(unit, b, 0)
    s += writeWire(unit, sel, 0)
    test(out, s)

    test(out, writeWire(unit, sel, 1))

    s = writeBus(unit, a, 0x5)
    s += writeWire(unit, sel, 0)
    test(out, s)

    test(out, writeWire(unit, sel, 1))

    test(out, writeBus(unit, b, 0xC))

    s = writeBus(unit, a, 0xF)
    s += writeWire(unit, sel, 0)
    test(out, s)

    test(out, writeWire(unit, sel, 1))

    s = writeBus(unit, b, 0xF)
    s += writeWire(unit, sel, 1)
    test(out, s)


def test_adder_subtracter(out):
    unit = 'Adder_Subtractor'
    A = ['A', 4]
    B = ['B', 4]
    C = 'Ci'
    op = 'op'

    def add(a, b, c):
        s = "\n# A=%u + B=%u\n" % (a, b)
        s += writeWire(unit, op, 0)
        s += writeBus(unit, A, a)
        s += writeBus(unit, B, b)
        s += writeWire(unit, C, c)

        return s

    def sub(a, b):
        s = "\n# A=%u - B=%u\n" % (a, b)
        s += writeWire(unit, op, 1)
        s += writeBus(unit, A, a)
        s += writeBus(unit, B, b)
        s += writeWire(unit, C, 0)
        # No need to clear carry - should be ignored

        return s

    out.write(addAllWires(unit, [op, C, A, B, 'S', 'Co']))
    test(out, add(0, 0, 0))
    test(out, add(7, 4, 0))
    test(out, add(7, 3, 1))
    test(out, add(7, 0, 0))
    test(out, add(7, 0, 1))
    test(out, sub(0, 0))
    test(out, sub(7, 0))
    test(out, sub(7, 3))
    test(out, sub(0, 1))


def test_1b_2to1_mux(out):
    assert (isinstance(out, io.TextIOBase))

    unit = 'testUnit'
    a = 'A'
    b = 'B'
    sel = 'S'

    out.write(addAllWires(unit, [sel, a, b, 'F']))
    out.write(setClock(unit, a, 100))
    out.write(setClock(unit, b, 200))
    out.write(setClock(unit, sel, 400))

    out.write(run(400))


if "__main__" == __name__:
    f_test_4b_2to1_mux = open("test_4b_2to1_mux.do", 'w')
    test_4b_2to1_mux(f_test_4b_2to1_mux)

    f_test_1b_2to1_mux = open("test_1b_2to1_mux.do", 'w')
    test_1b_2to1_mux(f_test_1b_2to1_mux)

    f_test_alu = open("test_alu.do", 'w')
    testALU(f_test_alu)

    f_test_adder = open("test_adder.do", 'w')
    test_adder_subtracter(f_test_adder)
