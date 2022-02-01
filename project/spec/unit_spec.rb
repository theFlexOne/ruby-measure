require "pry"
require_relative "../lib/ruby/measure/unit.rb"
include Unit_Validator

describe Unit_Validator do
  describe "Unit_Validator.valid?"
  it "returns true if the passed message is valid" do
    expect(Unit_Validator.valid?(subject)).to be_truthy
  end
end
