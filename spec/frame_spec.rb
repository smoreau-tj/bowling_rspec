require 'frame'

describe Frame do


    describe "#frame_over?" do
        context "when I bowl twice" do
            before do
                2.times { subject.bowl(0) }
            end

            it "is true" do
                expect(subject.frame_over?).to eq(true)
            end
        end

        context "when I bowl once" do
            before do
                subject.bowl(0)
            end

            it "is false" do
                expect(subject.frame_over?).to eq(false)
            end
        end
        context "when I bowl zero times" do
            it "is false" do
            expect(subject.frame_over?).to eq(false)
            end
        end
        context "when I bowl a strike" do
            before do
            subject.bowl(10)
            end
            it "is true" do
                expect(subject.frame_over?).to eq(true)
            end
        end

    end
end