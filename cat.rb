
#create a class called Cat

class Cat

attr_accessor :name, :preferred_food, :meal_time

  def initialize (name, preferrred_food, meal_time)
    @name = name
    @preferred_food = preferrred_food
    @meal_time = meal_time.to_i
  end
  def eats_at
    if meal_time >= 12
      puts "#{meal_time} PM"
    else
      puts "#{meal_time} AM"
    end
  end
end

#initialize new instances
cat1 = Cat.new("Piggy","Fish",2)
cat2 = Cat.new("Lucy","Dogs",3)
cat3 = Cat.new("Beeb","Bees",14)

puts cat1.eats_at
