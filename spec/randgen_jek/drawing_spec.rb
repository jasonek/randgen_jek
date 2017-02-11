require "spec_helper.rb"

module RandgenJek
  describe Drawing do
    describe "#draw" do
      let(:draw) {RandgenJek::Drawing.new.draw}

      it "returns an array" do
        draw.should be_a(Array)
      end

      it "returns an array with 5 elements" do
        expect(draw.size).to eq(5)
      end

      it "should have an integer as each element" do
        draw.each do |drawing|
          expect(drawing).to be_a(Integer)
        end
      end

      it "should have all elements valued less than 60" do
        draw.each do |drawing|
          expect(drawing).to be < 60
        end
      end

    end
  end
end
