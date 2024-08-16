from django.test import SimpleTestCase
from app import calc

class TestCalculator(SimpleTestCase):
    def test_add(self):
        result = calc.add(2, 3)
        self.assertEqual(result, 5)

    def test_subtract(self):
        result = calc.subtract(5, 3)
        self.assertEqual(result, 2)

    def test_multiply(self):
        result = calc.multiply(2, 3)
        self.assertEqual(result, 6)

    def test_divide(self):
        result = calc.divide(6, 3)
        self.assertEqual(result, 2)
