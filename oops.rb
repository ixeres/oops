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

 # Exercise 2 = CATS.

class Cat
  attr_accessor :name
  attr_reader :meal_time, :preferred_food

  def initialize(name, preferred_food, meal_time) #Don't forget to do this, dummy. #Putting it in the brackets makes it required to initialize an object in the class.
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time.to_i
  end

  def eats_at
    if (@meal_time < 12) #WHEN IN DOUBT, PUT IT IN BRACKETS.
      puts "#{@name} eats at #{@meal_time}AM."
    elsif (@meal_time == 12)
      puts "#{@name} eats at noon."
    else
      puts "#{@name} eats at #{@meal_time - 12}PM"
    end
  end
end
