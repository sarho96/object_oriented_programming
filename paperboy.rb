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
attr accessor :name, :quota, :experience, :side,
attr_reader :earnings

  del initialize(name, quota, experience, side, earnings)
    @name = name
    @quota = quota
    @experience = experience
    @side = side
    @earnings = earnings
  end
# method 1
  def quota
    50 +(0.5 * experience)
  end

# method 2
  def deliver (start_address, end_address)
    #takes 2 house numbers
    #return the amt of $ earned as float #
    #should update paperboy's experience
    #start_address = start_address > end address
    #end address = user_input = end_address > start_address
  end
#method 3
  def report
    "I'm #{name} and delivered #{experience} and earned #{earnings}"
    #return a string about paperboy's performance
    #ie. "I'm Tommy and delivered 90 papers and earned $$"
  end
end
