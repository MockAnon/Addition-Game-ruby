require './player.rb'


class TurnManager
  def initialize(players)
    @players = players.dup
    # puts players[0].name
    # puts players[1].name

  end

  def next_turn

    attacker = @players[0].name
    defender = @players[1].name
    @players.rotate!


    Turn.new(attacker, defender)
  end

  def get_attacker
    puts @players.first
    @players.first
  end

  def get_defender
    @players.last
  end
end


class Turn
  attr_reader :attacker, :defender

  def initialize(attacker, defender)
    @attacker = attacker
    @defender = defender
  end
end