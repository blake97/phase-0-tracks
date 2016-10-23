require_relative 'calculator_jackrabbits'

describe Calculator do
  let (:calculator) { Calculator.new }

  it "adds two integers" do
    expect(calculator.add(2,4)).to eq 6
  end

  it "subtracts two integers" do
    expect(calculator.subtract(5,3)).to eq 2
  end

  it "multiplies two integers" do
    expect(calculator.multiply(2,9)).to eq 18
  end

  it "divides two integers" do
    expect(calculator.divide(12,3)).to eq 4
  end
end

