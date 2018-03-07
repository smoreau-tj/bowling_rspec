require 'pry'
require 'frame'


class Bowling

 def initialize
  @rolls = []
 end

  def roll(pin)
   @rolls << pin

  end

  def score
   @rolls.sum
  end

  def game_over?
    @rolls.size >= 20
  end

end