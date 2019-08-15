class SimpleBankAccount {
  constructor() {
    this.balance = 1000
  }

  withdraw(amount) {
    if (amount <= this.balance) {
      this.balance -= amount
      return amount
    }
    return 0
  }

  deposit(amount) {
    if (amount < 0) {
      return 0
    }
    this.balance += amount
  }
}