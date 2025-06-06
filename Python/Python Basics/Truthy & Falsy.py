user_input = input("Enter something (or leave blank): ")

if user_input:
    print("You typed:", user_input)
else:
    print("You didn’t type anything (empty string is falsy).")