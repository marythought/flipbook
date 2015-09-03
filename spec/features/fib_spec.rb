require "spec_helper"
require "fib.rb"

describe 'fibonacci' do
  it "returns a valid result" do
    assert_equal fibonacci(0), 0
    assert_equal fibonacci(1), 1
    assert_equal fibonacci(20), 6765
  end

  it "returns an error with a negative number" do
    proc { fibonacci(-1) }.must_raise ArgumentError
  end

  it "rounds to the nearest integer given a float" do
    assert_equal fibonacci(3.14), 2
    assert_equal fibonacci(0.75), 0
  end
end


