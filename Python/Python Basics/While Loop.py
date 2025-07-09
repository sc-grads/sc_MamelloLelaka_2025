password = "secret"
guess = input("Enter the password: ")

while guess != password:
    print("Incorrect, try again.")
    guess = input("Enter the password: ")

print("Logged in successfully!")