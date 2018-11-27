class Triangle
  attr_accessor(:sides, :result)

  def initialize(side_a, side_b, side_c)
    @sides = [side_a.to_i, side_b.to_i, side_c.to_i].sort!
  end

  def triangle?
    if @sides[0] + @sides[1] <= @sides[2]
      @result = "Not a triangle"
    elsif (@sides[0] == @sides[1]) && (@sides[1] == @sides[2])
      @result = "equilateral"
    elsif ((@sides[0] == @sides[1]) && (@sides[1] != @sides[2])) || ((@sides[0] != @sides[1]) && (@sides[1] == @sides[2]))
      @result = "isosceles"
    elsif (@sides[0] != @sides[1]) && (@sides[1] != @sides[2]) && (@sides[2] != @sides[1])
      @result = "scalene"
    end
  end
end
