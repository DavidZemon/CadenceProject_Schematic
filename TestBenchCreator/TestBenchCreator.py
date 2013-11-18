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


def run(value) -> str:
    assert (isinstance(value, int))

    return "run " + str(value) + '\n'


def addWire(wire) -> str:
    assert (isinstance(wire, str))

    s = ''
    s += "add wave sim:/alu/" + wire + '\n'

    return s


def setWire(wire) -> str:
    assert (isinstance(wire, str))
    return "force sim:/alu/" + wire + ' 1' + '\n'


def clearWire(wire) -> str:
    assert (isinstance(wire, str))
    return "force sim:/alu/" + wire + ' 0' + '\n'


def writeWire(wire, value) -> str:
    assert (isinstance(wire, str))
    assert (value in [0, 1])
    return "force sim:/alu/" + wire + ' ' + str(value) + '\n'


def writeBus(bus, value) -> str:
    assert (isinstance(bus, list))
    assert (isinstance(bus[0], str))
    assert (isinstance(bus[1], int))
    assert (value in range(pow(2, bus[1])))

    s = ''
    for i in range(bus[1]):
        s += writeWire(bus[0] + '(' + str(i) + ')', value % 2)
        value >>= 1
    return s


class ALU(object):
    def __init__(self):
        self.c = "Ci"
        self.a = ['A', 4]
        self.b = ['B', 4]
        self.op = ['Op', 3]

        self.ops = {"and": 0, "or": 1, "xnor": 2, "xor": 3, "add": 4, "sub": 5, "incA": 6, "incB": 7}

    def start(self):
        return self.addWires() + clearWire('Ci')

    def addWires(self):
        s = '# Adding wires\n'
        s += addWire(self.op[0])
        s += addWire(self.c)
        s += addWire(self.a[0])
        s += addWire(self.b[0])

        s += addWire('F')
        s += addWire('Co')

        return s

    def opAnd(self, a, b) -> str:
        s = "\n# A=0x%02X & B=0x%02X\n" % (a, b)
        s += writeBus(self.op, self.ops["and"])
        s += writeBus(self.a, a)
        s += writeBus(self.b, b)
        # No need to clear carry - should be ignored

        return s

    def opOr(self, a, b) -> str:
        s = "\n# A=0x%02X | B=0x%02X\n" % (a, b)
        s += writeBus(self.op, self.ops["or"])
        s += writeBus(self.a, a)
        s += writeBus(self.b, b)
        # No need to clear carry - should be ignored

        return s

    def opXnor(self, a, b) -> str:
        s = "\n# ~(A=0x%02X ^ B=0x%02X)\n" % (a, b)
        s += writeBus(self.op, self.ops["xnor"])
        s += writeBus(self.a, a)
        s += writeBus(self.b, b)
        # No need to clear carry - should be ignored

        return s

    def opXor(self, a, b) -> str:
        s = "\n# A=0x%02X ^ B=0x%02X\n" % (a, b)
        s += writeBus(self.op, self.ops["xor"])
        s += writeBus(self.a, a)
        s += writeBus(self.b, b)
        # No need to clear carry - should be ignored

        return s

    def opAdd(self, a, b, c) -> str:
        s = "\n# A=%u + B=%u\n" % (a, b)
        s += writeBus(self.op, self.ops["add"])
        s += writeBus(self.a, a)
        s += writeBus(self.b, b)
        s += writeWire(self.c, c)

        return s

    def opSub(self, a, b) -> str:
        s = "\n# A=%u - B=%u\n" % (a, b)
        s += writeBus(self.op, self.ops["sub"])
        s += writeBus(self.a, a)
        s += writeBus(self.b, b)
        # No need to clear carry - should be ignored

        return s

    def opIncA(self, a) -> str:
        s = "\n# A=%u + 1\n" % a
        s += writeBus(self.op, self.ops["incA"])
        s += writeBus(self.a, a)

        return s

    def opIncB(self, b) -> str:
        s = "\n# B=%u + 1\n" % b
        s += writeBus(self.op, self.ops["incB"])
        s += writeBus(self.a, b)

        return s


if "__main__" == __name__:
    def test(output, operation):
        output.write(operation)
        output.write(run(100))

    alu = ALU()
    f = open("testbench.do", 'w')
    out = f

    out.write(alu.start())
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
