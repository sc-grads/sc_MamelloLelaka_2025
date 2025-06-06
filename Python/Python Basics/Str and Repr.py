class Book:
    def __init__(self, title, author, year):
        self.title  = title
        self.author = author
        self.year   = year

    def __repr__(self):
        # Show enough information to re‐create the Book object
        return f"Book({self.title!r}, {self.author!r}, {self.year})"

    def __str__(self):
        # A concise, human‐friendly description
        return f"“{self.title}” by {self.author} ({self.year})"

b = Book("1984", "George Orwell", 1949)

print(b)        # ➞ “1984” by George Orwell (1949)
print(str(b))   # ➞ “1984” by George Orwell (1949)
print(repr(b))  # ➞ Book('1984', 'George Orwell', 1949)