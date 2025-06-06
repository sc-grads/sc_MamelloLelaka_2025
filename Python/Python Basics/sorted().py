nums = [5, 2, 9, 1, 5, 6]
desc_nums = sorted(nums, reverse=True)
print(desc_nums)  # [9, 6, 5, 5, 2, 1]

nums = [5, 2, 9, 1, 5, 6]
sorted_nums = sorted(nums)
print(sorted_nums)   # [1, 2, 5, 5, 6, 9]

# Original list is unchanged:
print(nums)          # [5, 2, 9, 1, 5, 6]