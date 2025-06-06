def get_integer(prompt):
    """
    Repeatedly asks the user until they enter a valid integer.
    """
    while True:
        user_str = input(prompt)
        try:
            value = int(user_str)
            return value
        except ValueError:
            print(f"‘{user_str}’ is not a valid integer. Please try again.")

# Usage:
age = get_integer("Enter your age: ")
print("You entered:", age)

