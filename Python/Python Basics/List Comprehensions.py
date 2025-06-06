people = [
    {"name": "Alice", "age": 25},
    {"name": "Bob",   "age": 17},
    {"name": "Cara",  "age": 30},
    {"name": "Dan",   "age": 15},
]

adults = [person["name"] for person in people if person["age"] >= 18]
print(adults)  # ['Alice', 'Cara']
