# Exercise 4: THE PAPERBOY. Hooo boy.

class Paperboy

  attr_accessor :name, :experience
  attr_reader :earnings

def report
  p "Looks like #{@name} has delivered #{@experience} papers, earning him $#{@earnings}! Great job, #{@name}!"

def deliver(start_address, end_address)
  (houses = start_address - end_address)
  (money = houses * 0.25)

def quota
  (50 + @experience/2)
  p "#{@name} has to deliver #{quota} papers on their next delivery!"

def get_money


end
