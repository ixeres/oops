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
# M M R M M R M R R M
#
# Expected Output:
# 5 1 E

class Rover

  attr_accessor :x_coord, :y_coord, :direction

  compass = Array['N', 'E', 'S', 'W'] #not sure where to put this just yet.

  def initialize
    @x_coord = 1
    @y_coord = 2
    @direction = 'N'
  end

  def read_instruction(input)
    array = input.scan(/\w/)
    instruction = array.slice(0..10)
    if instruction.include?('M')
      move
    else
      turn
    end
  end

  def move
    if (@direction == 'N')
      (@y_coord += 1)
    end
    if (@direction == 'S')
      (@y_coord -= 1)
    end
    if (@direction == 'E')
      (@x_coord += 1)
    end
    if (@direction == 'W')
      (@x_coord -= 1)
    end
  end

  def turn
    compass = Array['N', 'E', 'S', 'W']
    index = @direction.each_index
    if instruction.include? ('L')
      then
      if (@direction == 'N')
        index += 3
      end
      if (@direction == 'S')
        index -= 1
      end
      if (@direction == 'W')
        index -= 1
      end
      if (@direction == 'E')
        index -= 1
      end
    end
    if instruction.include? ('R')
      then
      if (@direction == 'N')
        index += 1
      end
      if (@direction == 'S')
        index += 1
      end
      if (@direction == 'W')
        index -= 3
      end
      if (@direction == 'E')
        index += 1
      end
    end
  end


  def announce
    puts "I am currently at #{@x_coord},#{@y_coord}, and am facing #{@direction}!"
  end

end
