def get_positive_int(prompt):
    s = input(prompt)
    try:
        value = int(s)
    except ValueError:
        raise ValueError(f"‘{s}’ is not an integer.")
    if value <= 0:
        raise ValueError(f"Value must be positive, got {value}.")
    return value

# Usage:
try:
    age = get_positive_int("Enter your age: ")
    print("Your age is", age)
except ValueError as err:
    print("Error:", err)