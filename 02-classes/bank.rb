class Bank
  def initialize()
    @balance = 0
  end

  # method returns the value of the balance attribut
  def balance
    @balance
  end

  # method designed to set an attribute to a specific value
  def balance=(value)
    @balance = value
  end

  def deposit(amount)
    if amount > 0
      @balance += amount
    end
  end

  def withdraw(amount)
    if amount > balance
      @balance -= amount
    end
  end
end

bb = Bank.new
bb.deposit(100)
puts bb.balance

bb.balance += 350
puts bb.balance