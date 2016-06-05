#1. create class Rover
class Rover

#2. initialize class rover by creating its instance variables
#3. put instance variables into attr_accessor
  attr_accessor :x_coordinate, :y_coordinate, :facing_direction

  def initialize(x_coordinate, y_coordinate, facing_direction)
    @x_coordinate = 0
    @y_coordinate = 0
    @facing_direction = facing_direction
  end

  #4. def a method called read_instructions
  def read_instructions(instructions)
  #5. read_instructions will determine...
      #direct rover to either the move method or turn method
    instructions.each do |command|
      if command == "L" || comment == "R"
          turn(command)
      elsif command == "M"
          move
      end
    end
  end


#6. def a method called turn
  def turn(turn_direction)
    #use an if statement(turn_direction) to determine if turn_durection == Left or right
    #if Left then move n, e, s, w
    #if Right then move n, e, s, w
      if (@facing_direction == "N" && command == "L") || (@facing_direction == "S" && command == "R")
        turn_direction = "W"
      elsif (@facing_direction == "E" && command == "L") || (@facing_direction == "W" && command == "R")
        turn_direction = "N"
      elsif (@facing_direction == "S" && command == "L") || (@curret_direction == "N" && command == "R")
        turn_direction == "E"
      elsif (@facing_direction == "W" && command == "L") || (@facing_direction == "E" && command == "R")
          turn_direction = "S"
      end
  end
#7. def a method called move
  def move
      #create an if statement to determine the direction
      #move method will increment or decrement the x_coordinate or y_coordinate
      #for example: if direction is west, then the position will go down by 1
    if @facing_direction == "N"
      @y_coordinate += 1
    elsif @facing_direction == "E"
      @x_coordinate += 1
    elsif facing_direction == "W"
      @x_coordinate -= 1
    elsif facing_direction == "S"
      @x_coordinate -= 1
    end
  end

  def status
    return "The rover's position is at #{@y_coordinate},#{@x_coordinate}, facing #{@facing_direction}"
  end
end


rover1 = Rover.new(0, 1, "W")
p rover1.status
