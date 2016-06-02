=begin
create a program that will show paperboy's:
1) name
2) quota
3) experience
4) side
5) earnings (read-only)

calculate how much paperboy earns if:
$0.25 per house
+ $0.50 per house over quota
- 2.00 total for not reaching quota

minimum house = 50
quota = 0.5 * experience + 50

=end

class Paperboy
  attr_accessor :name, :quota, :experience, :side, :earnings
  #attr_reader :earnings

  def initialize(name, quota, experience, side, earnings)
    @name = name
    @quota = quota
    @experience = experience
    @side = side
    @earnings = earnings
  end

################### method 1 (done) ###################
  def paperboy_quota
    quota = 50 + (experience / 2)
  end

################### method 2 ###################
  def paperboy_deliver (start_address, end_address)
#determine side delivered to
    count_odd = 0
    count_even = 0


    if (count_odd == "odd") || (count_even == "even")
      homes_delivered = (end_address - start_address) / 2
      if homes_delivered > paperboy_quota
        earnings += 0.50
      elsif homes_delivered < paperboy_quota
        earnings - 2
      else
        earnings += 0.25
      end
    end

=begin
    if count_odd == "even"
      homes_delivered = (end_address - start_address) / 2
      if homes_delivered > paperboy_quota
        earnings += 0.50
      elsif homes_delivered < paperboy_quota
        earnings - 2
      else
        earnings += 0.25
      end
    end
=end

  end
  
################### method 3 (done)###################
  def paperboy_report
    "I'm #{name} and delivered #{experience} and earned #{earnings}"
    #return a string about paperboy's performance (done)
  end
end


john = Paperboy.new("John", 50, 19, "odd")
