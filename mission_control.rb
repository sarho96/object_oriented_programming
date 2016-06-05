require_relative 'rover'

=begin
rover1 = Rover.new(0,0,"N")

Method Mission_Control_Command(user_input)
    1. what is the plateau's size?
      plateaue_size = gets.chomp

    2. What is the starting position of first rover? (facing_direction, x_coordinate, y_coordinate)
    starting_position << rover_array
      - perhaps I can output starting position results through shovelling each instance of rover class as an array

    3. what direction is the rover turning or moving? L or R? M?
      rover_turning_direction = gets.chomp
      rover_moving_direction = gets.chomp

puts "rover is starting at (#{@x_coordinate},#{@y_coordinate}) facing #{@facing_direction}."
puts "Rover will move according to these coordinates: #{rover_turning_direction} and move #{rover_moving_number}"
if rover is moving to these coordinates, then their final position should be:
  ... need to find out how to push rover coordinators to add new coordinates in mission_control class




[plataue_size, starting_position[rover_starting_directions], rover_turning_direction, rover_moving_direction]
      0               1                   2                           3



=end
