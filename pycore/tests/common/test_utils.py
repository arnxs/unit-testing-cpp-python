import unittest as unittest
from pycore.common.utils import add, product, square


class TestUtils(unittest.TestCase):

    def test_sum(self):
        # Test that it can sum a list of integers
        input = (1, 2, 3)
        result = add(input)
        self.assertEqual(result, 6)

        input = (1, 2, 4)
        result = add(input)
        self.assertEqual(result, 7)

        input = (1, 2, -4)
        result = add(input)
        self.assertEqual(result, -1)

        input = ()
        result = add(input)
        self.assertEqual(result, 0)

    def test_product(self):
        # Test that it can subtract list of integers
        input = (1, 2, 3)
        result = product(input)
        self.assertEqual(result, 6)

        input = (2, 2, 3)
        result = product(input)
        self.assertEqual(result, 12)

        input = (-1, 1, 1)
        result = product(input)
        self.assertEqual(result, -1)

        input = (-1, 1, -1)
        result = product(input)
        self.assertEqual(result, 1)

        input = (-1, 0, -1)
        result = product(input)
        self.assertEqual(result, 0)

    def test_square(self):
        input = 0
        result = square(input)
        self.assertEqual(result, 0)

        input = 1
        result = square(input)
        self.assertEqual(result, 1)

        input = 3
        result = square(input)
        self.assertEqual(result, 9)

        input = -4
        result = square(input)
        self.assertEqual(result, 16)