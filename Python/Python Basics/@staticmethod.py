import math

class Circle:
    def __init__(self, radius):
        self.radius = radius

    def area(self):
        return math.pi * (self.radius ** 2)

    @staticmethod
    def degrees_to_radians(deg):
        """Convert degrees to radians—no need for ‘self’ or ‘cls’."""
        return deg * (math.pi / 180)

# Create a Circle instance and compute its area
c = Circle(5)
print(c.area())  # 78.53981633974483

# Call the static method on the class itself—no instance needed
radians = Circle.degrees_to_radians(180)
print(radians)   # 3.141592653589793 (which is π)

# You can also call it on an instance, but it’s exactly the same
print(c.degrees_to_radians(90))  # 1.5707963267948966 (which is π/2)