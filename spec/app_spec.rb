require 'nakor/app'

describe Nakor::App do
  it "broccoli is gross" do
    Nakor::App.portray("Broccoli").should eql("Gross!")
  end

  it "anything else is delicious" do
    Nakor::App.portray("Not Broccoli").should eql("Delicious!")
  end
end
