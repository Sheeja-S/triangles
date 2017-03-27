class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:equilateral?) do
    @side1.eql?(@side2) && @side2.eql?(@side3)
  end


  define_method(:isoscles?) do
    @side1.eql?(@side2) && @side2.!=(@side3)||
    @side1.eql?(@side3) && @side2.!=(@side1)||
    @side2.eql?(@side3) && @side2.!=(@side1)
  end

  define_method(:scalene?) do
    @side1.!=(@side2) && @side2.!=(@side3)
  end

  define_method(:not_triangle?) do
   (@side1.+(@side2)) <= @side3 ||    # if A + B < C or
   (@side2.+(@side3)) <= @side1 ||    # if B + C < A or
   (@side3.+(@side1)) <= @side2       # if C + A < B
 end
end
