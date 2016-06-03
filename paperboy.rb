class Paperboy
  attr_accessor :name, :quota, :experience, :side, :earnings
  attr_reader :earnings

  def initialize(name, side)
    @name = name
    @quota = 50
    @experience = 0
    @side = side
    @earnings = 0
  end

################### method 1 (done) ###################
  def quota
    quota = 50 + (experience / 2)
  end

################### method 2 ###################
  def deliver(start_address, end_address)
    homes_delivered = (end_address - start_address) / 2
    homes_delivered.times do |house|
      @experience += 1
      if house > quota
        @earnings += 0.50
      elsif house <= quota
        @earnings += 0.25
      end
    end
    @earnings -= 2 if homes_delivered < quota
  end



################### method 3 (done)###################
  def report
    "I'm #{name} and delivered #{experience} and earned #{earnings}"
    #return a string about paperboy's performance (done)
  end
end


john = Paperboy.new("John", "odd")
john.deliver(1, 400)
puts john.experience
puts john.earnings
stella = Paperboy.new("Stella", "even")
stella.deliver(4, 1000)
puts stella.earnings
