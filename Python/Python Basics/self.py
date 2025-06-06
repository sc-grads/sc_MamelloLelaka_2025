class Person:
    def __init__(self, name, age):
        self.name = name       # “self.name” is an attribute on this instance
        self.age = age         # “self.age” is another attribute

    def greet(self):
        # Here, “self.name” and “self.age” refer to this particular Person’s data
        print(f"Hello, my name is {self.name} and I am {self.age} years old.")