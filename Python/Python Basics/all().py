students = [
    {"name": "Alice", "score": 85},
    {"name": "Bob",   "score": 92},
    {"name": "Cara",  "score": 78}
]

# Check if every student passed (passing score is ≥ 80):
all_passed = all(s["score"] >= 80 for s in students)
print(all_passed)  # False (because Cara has 78)