require "spec_helper"

describe Product do
  it "product attributes must not be empty" do
    subject = Product.new
    subject.valid?.should be_false
    subject.errors.should have :title
  end
end