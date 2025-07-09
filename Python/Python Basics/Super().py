class Animal:
    def __init__(self, name):
        self.name = name
        print(f"Animal.__init__: set name = {self.name}")

    def speak(self):
        print(f"{self.name} makes a generic sound.")

class Dog(Animal):
    def __init__(self, name, breed):
        # Use super() to call the parent’s __init__ without naming Animal explicitly:
        super().__init__(name)
        self.breed = breed
        print(f"Dog.__init__: set breed = {self.breed}")

    def speak(self):
        # Optionally, call Animal’s speak first:
        super().speak()
        print(f"{self.name} says: Woof!")