class Person:
    def __init__(self, name, age):
        # These are instance attributes:
        self.name = name
        self.age = age

# Create two different Person objects:
alice = Person("Alice", 30)
bob   = Person("Bob", 22)

# Each has its own name and age:
print(alice.name, alice.age)  # Alice 30
print(bob.name, bob.age)      # Bob 22

# Modify one instance’s attribute:
alice.age = 31
print(alice.age)  # 31
print(bob.age)    # 22  (bob remains unchanged)

#Class
class Dog:
    # This is a class attribute:
    species = "Canis familiaris"

    def __init__(self, name, age):
        self.name = name  # instance attribute
        self.age  = age   # instance attribute

# Create two dogs:
dog1 = Dog("Buddy", 3)
dog2 = Dog("Luna", 5)

# Both share the same class attribute:
print(dog1.species)  # Canis familiaris
print(dog2.species)  # Canis familiaris

# You can also access it directly on the class:
print(Dog.species)   # Canis familiaris