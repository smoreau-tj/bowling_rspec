require './lib/bowling.rb'


describe "Bowling" do
    subject { Bowling.new }

        it "starts a new game" do
            subject
        end

    describe "#score" do


        it "has a score of zero " do
        expect(subject.score).to eq(0)
        end

        it "bowls a zero game" do
            20.times{ subject.roll(0) }
            expect(subject.score).to eq(0)
        end
        it "bowls a 20 game" do
            20.times{ subject.roll(1) }
            expect(subject.score).to eq(20)
        end
        it "bowls a 120 game" do
            20.times{ subject.roll(6) }
            expect(subject.score).to eq(120)
        end
        it "bowls a 25 game" do
            subject.roll(6)
            subject.roll(7)
            subject.roll(2)
            expect(subject.score).to eq(15)
        end


    end





end