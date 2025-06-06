def is_even(n):
    return n % 2 == 0

numbers = [1, 2, 3, 4, 5, 6]

filtered_iterator = filter(is_even, numbers)
print(filtered_iterator)            # <filter object at 0x...>

# Convert to a list to see the results:
even_numbers = list(filtered_iterator)
print(even_numbers)      