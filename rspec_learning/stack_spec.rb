require "rspec"

describe Queue do
  before :each do
    @queue = Queue.new
  end

  describe "when just created" do
    it "should be empty" do
      @queue.length.should == 0
    end
  end

  describe "when has some elements" do
    before :each do
      (1..10).each { |i| @queue.push i }
    end

    describe "#pop" do
      it "returns first element and removes it" do
        expect {
          @queue.pop.should == 1
        }.to change { @queue.length }.by -1
      end
    end

    describe "#push" do
      it "adds new element" do
        expect {
          @queue.push 22
        }.to change { @queue.length }.by 1
      end
    end
  end
end