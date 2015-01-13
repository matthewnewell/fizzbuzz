class FizzBuzz
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def result
    @result ||= []
  end

  def evaluate
    (@num1..@num2).each do |i|

      result << fizz_evaluator[:return_message] if fizz_evaluator[:condition].call(i)
      result << buzz_evaluator[:return_message] if buzz_evaluator[:condition].call(i)
      result << fizz_buzz_evaluator[:return_message] if fizz_buzz_evaluator[:condition].call(i)
      result << i if integer_evaluator[:condition].call(i)
    end
  end

  def fizz_evaluator
    {
      condition: ->(i){ i % 3 == 0 && i % 5 != 0 },
      return_message: "fizz"
    }
  end

  def buzz_evaluator
    {
      condition: ->(i){ i % 5 == 0 && i % 3 != 0 },
      return_message: "buzz"
    }
  end

  def fizz_buzz_evaluator
    {
      condition: ->(i){ i % 3 == 0 && i % 5 == 0 },
      return_message: "fizz-buzz"
    }
  end

  def integer_evaluator
    {
      condition: ->(i){ i % 3 != 0 && i % 5 != 0},
      return_message: nil
    }
  end
end
