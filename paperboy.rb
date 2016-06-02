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
    #return paperboy's quota
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
    #return a string about paperboy's performance
    #ie. "I'm Tommy and delivered 90 papers and earned $$"
  end
end
