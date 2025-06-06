def process(value):
    if isinstance(value, str):
        print("Got a string of length", len(value))
    elif isinstance(value, (list, tuple)):
        print("Got a sequence of items:", value)
    else:
        print("Got something else:", value)

process("abc")     # Got a string of length 3
process([1, 2, 3]) # Got a sequence of items: [1, 2, 3]
process(10)        # Got something else: 10