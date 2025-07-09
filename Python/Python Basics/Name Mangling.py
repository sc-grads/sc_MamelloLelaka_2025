class Person:
    def __init__(self, name, age):
        self.name = name           # public attribute
        self.__age = age           # “private” attribute (will be mangled)

    def __show_age(self):          # “private” method (mangled)
        print(f"{self.name} is {self.__age} years old.")

    def reveal(self):
        # Inside the class, you can still use __age and __show_age
        self.__show_age()