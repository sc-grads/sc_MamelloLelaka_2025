def compute(a, b):
    temp = a * b
    result = temp + 5
    print("Current locals:", locals())
    return result

compute(3, 4)
# Output: Current locals: {'a': 3, 'b': 4, 'temp': 12, 'result': 17}