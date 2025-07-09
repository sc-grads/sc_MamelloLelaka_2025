class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        # A generic placeholder—different animals speak differently
        return f"{self.name} makes a sound."

    def info(self):
        return f"This is an animal named {self.name}."


class Dog(Animal):
    def __init__(self, name, breed):
        # Call the parent constructor to set self.name
        super().__init__(name)
        self.breed = breed  # add a new attribute unique to dogs

    # Override the speak() method:
    def speak(self):
        return f"{self.name} says: Woof!"

    # Add a new method just for Dog:
    def fetch(self, item):
        return f"{self.name} fetched the {item}!"