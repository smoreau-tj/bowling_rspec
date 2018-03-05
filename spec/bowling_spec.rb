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
            20.times { subject.roll(0) }
            expect(subject.score).to eq(0)
        end
        it "bowls a 20 game" do
            game_2 = 20.times { subject.roll(1)}
            expect(subject.score).to eq(game_2)
        end
    end





end