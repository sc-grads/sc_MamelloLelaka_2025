password = "mypassword"
attempts = 0

while attempts < 3:
    guess = input("Enter your password: ")
    if guess == password:
        print("Logged in successfully!")
        break
    else:
        print("Incorrect password.")
        attempts += 1
else:
    print("Too many attempts, access denied.")