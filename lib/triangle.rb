require 'pry'

class Triangle
 attr_accessor :one, :two, :three

def initialize(one, two, three)
  @one = one
  @two = two
  @three = three
end

def kind()
  # binding.pry
  if @one < 0 || @two < 0 || @three < 0
    raise TriangleError
  elsif @one + @two <= @three || @one + @three <= @two || @two + @three <= @one
    raise TriangleError
elsif @one == @two && @two == @three
  return :equilateral
elsif @one == @three && @one != @two || @one == @two && @one != @three || @two == @three && @two != @one
  return :isosceles
elsif @one != @two && @two != @three
  return :scalene
 
else 
  return false
end
end




class TriangleError < StandardError
  def message
    puts "triangle not valid"
  end
end




end
