require "spec_helper"
require "flipbook.rb"

describe Flipbook do

  before do
    @book = Flipbook.new("road! brick yellow the Follow")
    @result = "Follow the yellow brick road!"
  end

  it "returns a valid result with split" do
    assert_match @book.flip, @result
  end

  it "returns a valid result without split" do
    assert_match @book.flip_no_split, @result
  end
end
