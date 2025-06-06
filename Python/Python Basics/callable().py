def greet():
    print("Hello!")

print(callable(greet))   # True, because greet() is a function
print(callable(len))     # True, len is a built-in function