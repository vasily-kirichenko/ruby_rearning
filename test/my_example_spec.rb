require "rspec"
require_relative "my"

describe My do
  context "when just created" do
    it "should have age given in the constructor" do
      subject = My.new 23, nil
      subject.age.should eq 23
    end
  end

  context "when assigned some age" do
    it "should have the age" do
      subject = My.new 1, nil
      subject.age = 33
      subject.age.should eq 33
    end
  end

  context "when assigned some age" do
    it "should call the logger" do
      logger = double()
      subject = My.new 10, logger
      new_age = 33
      logger.should_receive(:debug).with("new age = #{new_age}")
      subject.age = new_age
    end
  end

  context "when is added a singleton method" do
    it "should call it" do
      subject = My.new 4, nil
      def subject.singleton_method v
        v + v
      end
      subject.singleton_method(2).should eq 4
    end

  end
end