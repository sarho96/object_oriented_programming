#1. create class Rover
class Rover

#2. initialize class rover by creating its instance variables
#3. put instance variables into attr_accessor
  attr_accessor :x_coordinate, :y_coordinate, :current_direction

#4. def a method called turn
  def turn(turn_direction)
    #use an if statement(turn_direction) to determine if turn_durection == Left or right
    #if Left then move n, e, s, w
    #if Right then move n, e, s, w
    #because moving left will always output w, and because moving right will
      if (@current_direction == "N") || (@current_direction == "S")
        @current_direction = "W"
      elsif turn_direction == "L" && @current_direction == "E"
      end
  end
#5. def a method called move
    #create an if statement to determine the direction
    #move method will increment or decrement the x_coordinate or y_coordinate
    #for example: if direction is west, then the position will go down by 1

    if @direction == "W"
    @position_x -= 1

#6. def a method called read_instructions
    def read_instructions(instructions)
#7. read_instructions will determine...
    #direct rover to either the move method or turn method
    instructions.each do |command|
      if command == "L" || comment == "R"
        turn(command)
      elsif == command == "M"
        move
      end
    end

end
