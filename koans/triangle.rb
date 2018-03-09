class  TriangleError < RuntimeError
end

def triangle(a, b, c)

  unless a > 0 && b > 0 && c > 0 && (a + b) > c && (a + c) > b && (b + c) > a
    raise TriangleError, "The triangle is not valid"
  end

  if  [a, b, c].uniq.size == 1
    :equilateral
  elsif [a, b, c].uniq.size == 2
    :isosceles
  else
    :scalene
  end
end
