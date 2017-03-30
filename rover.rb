# STRETCH ASSIGNMENT: The Mars Rover!

# Breaking the problem down:
# Class = Rover
# Initialize the starting position.
# Behaviours for the rover:
# read_instruction: accept an instruction, decide to 'move' or 'turn'.
# move: affects the position of the rover, updates x OR y coordinates.
#turn: affects the direction of the rover, turns L OR R.
#States for the rover:
# x coord: The current X position of the rover.
# y coord: The current Y position of the rover.
# direction: The current facing of the rover (N, S, E, W)
# copy/paste the map/grid:
# _ _ _ _ _ _ _ _ _
# 9|_|_|_|_|_|_|_|_|_|        N
# 8|_|_|_|_|_|_|_|_|_|      W   E
# 7|_|_|_|_|_|_|_|_|_|        S
# 6|_|_|_|_|_|_|_|_|_|
# 5|_|_|_|_|_|_|_|_|_|
# 4|_|_|_|_|_|_|_|_|_|
# 3|_|_|_|_|_|_|_|_|_|
# 2|_|_|_|_|_|_|_|_|_|
# 1|_|_|_|_|_|_|_|_|_|
# 0 1 2 3 4 5 6 7 8 9

# #Copy/paste example input/outputs:
# Test Input 1:
# 1 2 N                > our start position and direction
# LMLMLMLMM            > a series of move and turn instructions.
#
#
# Expected Output:
# 1 3 N                > rover's new position
#
#
# Test Input 2:
# 3 3 E
# MMRMMRMRRM
#
# Expected Output:
# 5 1 E

class Rover

  attr_accessor :x_coord, :y_coord, :direction

  def initialize
    @x_coord = 1
    @y_coord = 2
    @direction = 'N'

  def read_instruction(input)
    array = input.scan(/\w/) #turns base input into an array of values. Now what to do with the array?
    #need to transform each of the values in the array, while still maintaining the order of actions.
    #this step needs to essentially read the instructions, and if it's a turn, perform the 'turn' method.
    #if it's a movement, it will perform the 'move' method.
    end
    end
  end

  def move
    #add in a rule that determines to add or subtract from the x_coord or y_coord, depending on the rover's facing.
    #if the rover is facing north, + 1 to y, south, -1 to y. East = + 1 to x, West = -1 to x. Will need compass values.
  end

  def turn
    compass = Array['N', 'E', 'S', 'W']
    #add in a rule to transpose turns (L,R) into compass directions, with an exception if the turn happens on index 0 or 3.
    #So, L will generally - 1 from the index of the compass, unless it's 0, in which case it will + 3.
    #Conversely, R will generally + 1 to the index of the compass, unless it's 3, in which case it will - 3.
  end

  def position_announce
    puts "I am currently at #{@x_coord},#{@y_coord}, and am facing #{@direction}!"
  end

end
