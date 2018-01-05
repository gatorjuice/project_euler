class Palindrome

  attr_reader :palindromes

  def initialize(digits)
    @mult_range_one = (0...('9' * digits).to_i)
    @mult_range_two = (0...('9' * digits).to_i)
    @largest_product = ('9' * digits).to_i**2
    @palindromes = []
  end

  def solve
    @mult_range_one.each do |x|
      @mult_range_two.each do |y|
        @palindromes << x * y if is_palindrome?(x * y)
      end
    end
    @palindromes.max
  end

  def is_palindrome?(number)
    number == number.to_s.reverse.to_i
  end
end


palindrome = Palindrome.new(4)
p palindrome.solve

