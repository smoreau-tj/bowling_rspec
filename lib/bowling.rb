class Bowling

 def initialize
    @rolls = []
 end


def roll(pin)
    @rolls << pin
end

def score
    #@rolls.reduce(:+)
    score = 0
    bowls = 0
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