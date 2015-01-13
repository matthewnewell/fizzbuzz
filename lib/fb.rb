class FizzBuzz
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def result
    @result ||= []
  end

  def evaluator(evaluator_name, i)
    evaluator = send("#{evaluator_name}_evaluator")

    if evaluator[:condition].call(i)
      result << evaluator[:return_message] ||= i
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
      condition: ->(i){ i % 3 != 0 && i % 5 != 0}
    }
  end

  def evaluate
    evaluators = ["fizz", "buzz", "fizz_buzz", "integer"]
    
    (@num1..@num2).each do |i|
      evaluators.each do |e| 
        evaluator(e, i)
      end
    end 
  end
end
