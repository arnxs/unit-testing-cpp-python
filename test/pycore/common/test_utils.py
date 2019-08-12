import unittest as unittest
from pycore.common.utils import sum


class TestUtils(unittest.TestCase):

    def test_sum(self):
        # Test that it can sum a list of integers
        data = [1, 2, 3]
        result = sum(data)
        self.assertEqual(result, 6)

        data = [1, 2, 4]
        self.assertEqual(result, 7)


if __name__ == '__main__':
    unittest.main()
