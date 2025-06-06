import math

x = 1e-10
y = 2e-10

# Direct compare: False
print(x == y)               # False

# Using a small absolute tolerance:
print(math.isclose(x, y, abs_tol=1e-9))  # True, because |x - y| = 1e-10 < 1e-9