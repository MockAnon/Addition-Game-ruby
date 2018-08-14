require './player.rb'
require './turn_manager.rb'
require './question.rb'





class Game
  def initialize()
    @player1 = Player.new("Bob")
    @player2 = Player.new("Joe")
    # @turn = [@player1, @player2]
    @turn_manager = TurnManager.new(self.players)
    @question = Question.new
  end

  def players
    [@player1, @player2]
  end

  def game_over?
    players.any? {|r| r.dead? }
  end


  def run

    puts "running game"

    while !game_over?
      turn = @turn_manager.next_turn
      puts "---- NEW TURN ----"

      # @question()
    # puts "insert two numbers under 20."
    # puts @question.no1

    puts "#{@turn_manager.get_defender.name} What does #{@question.no1} plus #{@question.no2} equal? #{@question.sum}"

    answer = gets.chomp.to_i

    if (answer === @question.sum)
      puts "YES! You are correct."
      puts "P1: #{@player1.health}/3 vs P2: #{@player2.health}/3"
      @question.roll

    else
      # @player1.take_damage
      @turn_manager.get_defender.take_damage
      # @player1.take_damage
      puts "#{@turn_manager.get_defender.name} has taken 1 damage"
      puts "P1: #{@player1.health}/3 vs P2: #{@player2.health}/3"
      @question.roll
      # @turn_manager.next_turn
    end
  end
  puts "#{@turn_manager.get_attacker.name} wins with a score of #{@turn_manager.get_attacker.health}/3"
  puts "----GAME OVER----"
  puts "-----FATALITY-----"
end
end