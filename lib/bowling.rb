require 'pry'
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

end