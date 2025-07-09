class Person:
    # Class attribute to track how many Person objects are created
    count = 0

    def __init__(self, name):
        self.name = name
        Person.increment_count()  # bump counter via class method

    @classmethod
    def increment_count(cls):
        cls.count += 1

    @classmethod
    def get_count(cls):
        return cls.count

    def greet(self):
        print(f"Hi, I’m {self.name}.")

# Create a few Person instances:
p1 = Person("Alice")
p2 = Person("Bob")
p3 = Person("Cara")

print(Person.get_count())  # 3