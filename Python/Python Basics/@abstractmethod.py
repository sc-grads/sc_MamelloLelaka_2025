from abc import ABC, abstractmethod

class Shape(ABC):
    """Abstract base class for geometric shapes."""

    @abstractmethod
    def area(self):
        """Calculate and return the area of the shape."""
        pass

    @abstractmethod
    def perimeter(self):
        """Calculate and return the perimeter of the shape."""
        pass

# Attempting to do this raises TypeError:
s = Shape()
# TypeError: Can't instantiate abstract class Shape with abstract methods area, perimeter
