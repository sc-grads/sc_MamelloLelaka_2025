class Car:
    def __init__(self, make, model, year, color="Black"):
        self.make = make
        self.model = model
        self.year = year
        self.color = color  # default is "Black" if not provided

    def info(self):
        print(f"{self.year} {self.make} {self.model} in {self.color}")

# Instantiating with and without the optional color:
car1 = Car("Tesla", "Model S", 2021, "Red")
car2 = Car("Toyota", "Corolla", 2020)  # color defaults to "Black"

car1.info()  # 2021 Tesla Model S in Red
car2.info()  # 2020 Toyota Corolla in Black