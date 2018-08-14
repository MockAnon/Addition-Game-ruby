class Question
  attr_reader :no1, :no2, :sum
  def initialize()
    # @no1 = 1 + rand(20)
    # @no2 = 1 + rand(20)
    # @sum = no1 + no2
    @roll = roll


  end



  def roll
    @no1 = 1 + rand(20)
    @no2 = 1 + rand(20)
    @sum = no1 + no2

  end

  # puts "#{no1} #{no2} #{answer}"



  # print "Please enter number your answer : ";
  # val2 = gets;


end