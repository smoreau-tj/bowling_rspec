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
      20.times { subject.roll(1) }
      expect(subject.score).to eq(20)
    end
    it "bowls a 120 game" do
      20.times { subject.roll(6) }
      expect(subject.score).to eq(120)
    end
    it "bowls a 25 game" do
      subject.roll(6)
      subject.roll(7)
      subject.roll(2)
      expect(subject.score).to eq(15)
    end
    # it "bowls a perfect game" do
    #     20.times do
    #         subject.roll(10)
    #     end
    #     expect(subject.score).to eq(300)
    # end
  end

  describe "#game_over?" do
    context "when I have completed 20 bowls" do
      before do
        20.times { subject.roll(0) }
      end
      it " is true " do
        expect(subject.game_over?).to eq(true)
      end
    end
    context "when I have completed 5 bowls" do
      before do
        5.times { subject.roll(0) }
      end
      it "is false" do
        expect(subject.game_over?).to eq(false)
      end
    end

    context " when I bowl 12 strikes in a row" do
      before do
        12.times { subject.roll(10) }
      end

      it "is true " do
        pending
        expect(subject.game_over?).to eq(true)
      end
    end

    context "when I have not bowled yet" do
      it "is false" do
        expect(subject.game_over?).to eq(false)
      end
    end
  end
end
