import unittest as unittest
from pycore.common.utils import add


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
