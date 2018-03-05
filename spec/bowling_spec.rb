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
    end


end