marks = int(input("Enter your marks: "))

if marks >= 85:
    print("Excellent! You've scored an A.")
elif marks >= 70:
    print("Good job! You've scored a B.")
elif marks >= 50:
    print("Fair, you've scored a C.")
else:
    print("Unfortunately, you've failed.")