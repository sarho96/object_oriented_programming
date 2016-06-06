class Rover

  attr_accessor :x_coordinate, :y_coordinate, :facing_direction

  def initialize(x_coordinate, y_coordinate, facing_direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @facing_direction = facing_direction
    puts @facing_direction
  end

#4. def a method called read_instructions
  def read_instructions(instructions)
    instructions.each do |command|
      if command == "L" || command == "R"
        turn(command)
      elsif command == "M"
        move
      else
      end
    end
    return "you are at #{@x_coordinate} #{@y_coordinate} #{@facing_direction}"
  end

#6. def a method called turn
  def turn(turn_direction)
      if (@facing_direction == "N" && command == "L") || (@facing_direction == "S" && command == "R")
        @facing_direction = "W"
      elsif (@facing_direction == "E" && command == "L") || (@facing_direction == "W" && command == "R")
        @facing_direction = "N"
      elsif (@facing_direction == "S" && command == "L") || (@curret_direction == "N" && command == "R")
        @facing_direction == "E"
      elsif (@facing_direction == "W" && command == "L") || (@facing_direction == "E" && command == "R")
        @facing_direction = "S"
      end
  end

#7. def a method called move
  def move
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

end


  puts "What is the plateau size? ex. 5 5"
  plateau_size = gets.chomp
  puts "Your plateau size is #{plateau_size}"


  puts "What is your initial start position? enter: x-coordinate, y-coordinate, facing direction"
  initial_start_position = gets.chomp.split(" ")
  puts "Your starting position is #{initial_start_position}"



  puts "Please enter your move and turn instructions. ex. LMRMMLM"
  move_turn_instructions = gets.chomp.split("")
  # puts "Your instructions are: #{move_turn_instructions}"

rover = Rover.new(initial_start_position[0].to_i, initial_start_position[1].to_i, initial_start_position.to_s[2])

 puts rover.read_instructions(move_turn_instructions)
