numbers = [1, 2, 3, 4, 5, 6]
i = 0

while i < len(numbers):
    if numbers[i] % 2 == 0:
        numbers.pop(i)   # remove at index i
        # Do NOT increment i, because elements shifted left
    else:
        i += 1           # only increment if we didn’t remove
print(numbers)  # [1, 3, 5]