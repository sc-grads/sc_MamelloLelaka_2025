class BankAccount:
    """A simple BankAccount class with deposit, withdraw, and balance features."""

    def __init__(self, owner, balance=0.0):
        """
        owner: the account holder’s name
        balance: optional starting balance (default 0.0)
        """
        self.owner = owner
        self.balance = balance

    def deposit(self, amount):
        """Add money to the account if amount is positive."""
        if amount > 0:
            self.balance += amount
            print(f"Deposited {amount:.2f}; new balance is {self.balance:.2f}")
        else:
            print("Deposit amount must be positive.")

    def withdraw(self, amount):
        """Subtract money if sufficient funds exist, otherwise print an error."""
        if amount <= 0:
            print("Withdrawal amount must be positive.")
        elif amount > self.balance:
            print("Insufficient funds.")
        else:
            self.balance -= amount
            print(f"Withdrew {amount:.2f}; new balance is {self.balance:.2f}")

    def get_balance(self):
        """Return the current balance."""
        return self.balance

acct = BankAccount("Alice", 100.0)
print(f"{acct.owner}’s starting balance: {acct.get_balance():.2f}")

acct.deposit(50)        # Deposited 50.00; new balance is 150.00
acct.withdraw(20)       # Withdrew 20.00; new balance is 130.00
acct.withdraw(200)      # Insufficient funds.
print(acct.get_balance())  # 130.0