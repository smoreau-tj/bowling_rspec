class Frame
    def initialize
    @rolls = []
    end

    def frame_over?
        @rolls.size == 2 || strike?
    end

    def bowl(n)
        @rolls << n
    end

    def strike?
    @rolls.first == 10
    end

end