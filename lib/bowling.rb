require 'pry'
class Bowling

 def initialize
    @rolls = []
 end


def roll(pin)
    @rolls << pin
end

def score
    binding.pry
    score = 0
    bowls = 1
    if(@rolls.size <= 1)
        score = 0
    else
        20.times do
        score += @rolls[bowls]
        bowls += 1
        end
    end
    score

end

end