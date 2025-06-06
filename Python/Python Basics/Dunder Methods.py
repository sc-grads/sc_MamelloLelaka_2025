class Rational:
    """Represents a fraction num/denom in simplest form."""

    def __init__(self, num, denom):
        self.num = num
        self.denom = denom

    def __repr__(self):
        return f"Rational({self.num}, {self.denom})"

    def __str__(self):
        return f"{self.num}/{self.denom}"

    def __eq__(self, other):
        return self.num * other.denom == other.num * self.denom

    def __add__(self, other):
        new_num = self.num * other.denom + other.num * self.denom
        new_den = self.denom * other.denom
        return Rational(new_num, new_den)

    def __float__(self):
        return self.num / self.denom

# Usage:
r1 = Rational(1, 2)
r2 = Rational(1, 3)
print(r1, repr(r2))   # “1/2”  “Rational(1, 3)”
print(r1 == r2)       # False
print(r1 + r2)        # Rational(5, 6)
print(float(r1 + r2)) # 0.8333333333333334