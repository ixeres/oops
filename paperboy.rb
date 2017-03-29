# Exercise 4: THE PAPERBOY. Hooo boy.

class Paperboy

  attr_accessor :name, :experience
  attr_reader :earnings

  def initialize(name)
    @name = name.to_s
    @experience = 0
    @earnings = 0

  def report
    p "Looks like #{@name} has delivered #{@experience} papers, earning him $#{@earnings}! Great job, #{@name}!"
  end

  def deliver(start_address, end_address)
    houses = (end_address - start_address)
    money = (houses * 0.25)
    over_quota = (houses - quota)
    if (over_quota > 0)
      p (over_quota * 0.25 + money)
    else
      p money
    end
  end
end

  def quota
    50 + (@experience / 2)
  end
end
