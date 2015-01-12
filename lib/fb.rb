class FizzBuzz
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def result
    @result ||= []
  end

  def fizz_check(num)
    if num % 3 == 0 && num % 5 != 0
     result << "fizz"
    end
  end

  def buzz_check(num)
    if num % 5 == 0 && num % 3 != 0
     result << "buzz"
    end
  end

  def fizz_buzz_check(num)
    if num % 3 == 0 && num % 5 == 0
      result << "fizz-buzz"
    end
  end

  def evaluate
    (@num1..@num2).each do |i|
      result << i unless fizz_check(i) ||  buzz_check(i) || fizz_buzz_check(i)
    end
  end
end
