class Triangle
  attr_accessor(:sides)

  def initialize(side_a, side_b, side_c)
    @sides = [side_a.to_i, side_b.to_i, side_c.to_i].sort!
  end

  def triangle?
    if @sides[0] + @sides[1] <= @sides[2]
      return false
    elsif (@sides[0] == @sides[1]) && (@sides[1] == @sides[2])
      return "equilateral"
    elsif ((@sides[0] == @sides[1]) && (@sides[1] != @sides[2])) || ((@sides[0] != @sides[1]) && (@sides[1] == @sides[2]))
      return "isosceles"
    elsif (@sides[0] != @sides[1]) && (@sides[1] != @sides[2]) && (@sides[2] != @sides[1])
      return "scalene"
    end
  end
end
