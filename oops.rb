# Exercise 1

class BankAccount
  attr_accessor :balance
  attr_reader :interest_rate

  def deposit(amount)
    amount += balance
  end

  def withdraw(amount)
    -amount + balance #BECAUSE YOU ARE REMOVING MONEY. DUH, DEVIN.
  end

  def interest_rate
    interest = 1.3
  end

  def gain_interest
    interest_rate * balance
  end
end
 # I think this is all working. YAY.
