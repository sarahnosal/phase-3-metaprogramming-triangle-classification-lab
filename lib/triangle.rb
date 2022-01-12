class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind 
    raise TriangleError unless inequality? && sides_equal_zero?
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  def inequality?
    a + b > c && b + c > a && a + c > b
  end

  def sides_equal_zero?
    a > 0 || b > 0 || c > 0
  end

  class TriangleError < StandardError
  end
end
