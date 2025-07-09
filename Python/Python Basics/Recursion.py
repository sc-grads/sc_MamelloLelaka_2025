def factorial(n):
    """
    Returns n! (n factorial) for n >= 0.
    Base case: 0! = 1
    Recursive case: n! = n * (n-1)!
    """
    if n < 0:
        return None  # (optional) handle negative input if desired

    if n == 0:
        return 1            # Base case
    else:
        return n * factorial(n - 1)  # Recursive case

# Demo
print(factorial(3))
print(factorial(1))   
print(factorial(5))