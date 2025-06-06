names  = ["Alice", "Bob", "Cara"]
scores = [85,      92,     78]

z = zip(names, scores)         # returns a zip object
print(z)                       # <zip object at 0x...>

paired = list(z)               # convert to a list of tuples
print(paired)