require './lib/fb.rb'

describe "Fizz Buzz" do
  let(:fb) { FizzBuzz.new(1,15) }

  it "FB runs the program fizz buzz against a range" do
    fb.evaluate
    expect(fb.result).to eq [1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizz-buzz"]
  end

  it "returns fizz-buzz if number is divisible by 3 and 5" do
    expect(fb.fizz_buzz_evaluator[:condition].call(15)).to eq true
    expect(fb.fizz_buzz_evaluator[:return_message]).to eq "fizz-buzz"
  end

  it "returns fizz if number is divisible by 3 and not 5" do
    expect(fb.fizz_evaluator[:condition].call(3)).to eq true
    expect(fb.fizz_evaluator[:return_message]).to eq "fizz"
  end

  it "returns buzz if number is divisible by 5 and not 3" do
    expect(fb.buzz_evaluator[:condition].call(5)).to eq true
    expect(fb.buzz_evaluator[:return_message]).to eq "buzz"
  end
end


