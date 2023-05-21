class Triangle
  attr_accessor :length, :width, :height
  def initialize(length,width,height)
    @length=length
    @width=width
    @height=height
  end
  def kind
    validate_triangle

  if @length==@width and @width==@height
    :equilateral
  elsif @length!=@width and @width!=@height and @length!=@height
    :scalene
  else :isosceles    
  end
  end
  private 
  def validate_triangle
   validate_positive_sides
   validate_triangle_inequality
  end

  def validate_positive_sides
    if @length<=0 or @width<=0 or @height<=0
    raise TriangleError,'Sides of a triangle must be larger than 0'
    end
  end

  def validate_triangle_inequality
    if @length + @width<=@height or @width+@height<=@length or @length + @height<=@width
      raise TriangleError,'Invalid triangle:the sum of any two sides must be greater than the third side'
    end
  end

  class TriangleError <StandardError
  end
end

  