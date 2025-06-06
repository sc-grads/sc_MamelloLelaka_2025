# Modules.py

PI = 3.1415926535

def add(a, b):
    return a + b

def multiply(a, b):
    return a * b

def circle_area(radius):
    return PI * radius * radius

if __name__ == "__main__":
    # This code runs only if you execute math_utils.py directly
    print("Testing math_utils:")
    print("2 + 3 =", add(2, 3))
    print("Area of circle with r=5:", circle_area(5))


PI = 3.14

def add(x, y):
    return x + y

def multiply(x, y):
    return x * y