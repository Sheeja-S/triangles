require('rspec')
require ('triangles')

describe('Triangle') do
  describe('#equilateral?') do
    it("returns false when all sides of the triangle are not equal") do
      test_triangle = Triangle.new(6,6,8 )
      expect(test_triangle.equilateral?()).to(eq(false))
    end

    it("returns true when all sides of the triangle are equal") do
      test_triangle = Triangle.new(6,6,6 )
      expect(test_triangle.equilateral?()).to(eq(true))
    end
  end

  describe('#isoscles?') do
    it("returns false when any 2 sides of the triangle are not equal") do
      test_triangle = Triangle.new(6,7,8 )
      expect(test_triangle.isoscles?()).to(eq(false))
    end

    it("returns true when any 2 sides of the triangle are equal") do
      test_triangle = Triangle.new(6,6,9)
      expect(test_triangle.isoscles?()).to(eq(true))
    end
  end

  describe('#scalene?') do
    it("returns false when any side of the triangle are equal") do
      test_triangle = Triangle.new(6,6,8 )
      expect(test_triangle.scalene?()).to(eq(false))
    end

    it("returns true when no side of the triangle are equal") do
      test_triangle = Triangle.new(6,7,9)
      expect(test_triangle.scalene?()).to(eq(true))
    end

  describe('#not_triangle') do
    it ("returns true when the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side") do
      test_triangle = Triangle.new(7, 5, 12)
      expect(test_triangle.not_triangle?()).to(eq(true))
    end
  end

  end
end
