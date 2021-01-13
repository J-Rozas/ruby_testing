#spec/calculator_spec.rb

require "./lib/calculator.rb"

describe Calculator do
  describe "#add" do
    it "returns the sum of two or three numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end 

  describe "#multiply" do
    it "returns the product of two or three numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(2,8)).to eql(16)
    end
    it "returns the product of two or three numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(3,9,2)).to eql(54)
    end
  end

  describe "#divide" do
    it "returns the quotient of a division or of two divisions if there are 3 elements" do
      calculator = Calculator.new
      expect(calculator.divide(6,6)).to eql(1)
    end
    it "returns the quotient of a division or of two divisions if there are 3 elements" do
      calculator = Calculator.new
      expect(calculator.divide(6,6,10)).to eql(0)
    end
  end

  describe "#rest" do
    it "returns the difference of two or three numbers" do
      calculator = Calculator.new
      expect(calculator.rest(92,13)).to eql(79)
    end
    it "returns the difference of two or three numbers" do
      calculator = Calculator.new
      expect(calculator.rest(5,3,10)).to eql(-8)
    end
  end
end
