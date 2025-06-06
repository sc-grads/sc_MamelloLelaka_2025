numbers = [10, 20, 30, 40, 50]
search_for = 30

for num in numbers:
    if num == search_for:
        print(f"{search_for} was found!")
        break
else:
    print(f"{search_for} was not found!")