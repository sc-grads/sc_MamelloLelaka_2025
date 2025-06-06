# Built-in scope: Python’s own functions like len, print

x = "global x"  # Global scope

def outer_function():
    x = "enclosing x"  # Enclosing scope for inner_function

    def inner_function():
        x = "local x"  # Local scope
        print("Inner:", x)

    inner_function()
    print("Outer after inner:", x)

outer_function()
print("Global after calls:", x)

def foo():
    a = 10   # 'a' is local to foo()
    print("Inside foo, a =", a)

foo()
# print(a)  # Error: NameError, because 'a' is not defined globally

y = 5  # 'y' is global

def bar():
    print("Inside bar, y =", y)  # Reads from the global 'y'

bar()
print("At top level, y =", y)