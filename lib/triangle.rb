require "pry"
class Triangle
  attr_reader :equilateral,:isosceles,:scalene
   def initialize(side1,side2,side3)
   
@side1=side1
@side2=side2
@side3=side3
   end

  def kind
    sides=[@side1,@side2,@side3].sort
  
  if @side1==0&&@side2==0&&@side3==0
    raise TriangleError
  elsif @side1<0||@side2<0||@side3<0
      raise TriangleError
  elsif sides[0]+sides[1]<=sides[2]
    raise TriangleError
  elsif @side1==@side2 && @side1==@side3
  :equilateral
  elsif @side1==@side2 || @side3 ==@side1 ||@side2==@side3
  :isosceles
  else
  :scalene
  end
  # binding.pry
  end

              class TriangleError < StandardError
              # binding.pry
              def message
                "for triangles with no size!"
              end
              end
end
t1=Triangle.new(3,4,5)