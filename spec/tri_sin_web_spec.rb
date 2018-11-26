require ('rspec')
require ('tri_sin_web')

describe ('tri_sin_web') do
  describe ('Triangle') do

    it ("triangle?() tells you whether your sides can make a triangle or not.") do
      expect(tri1 = Triangle.new(2,3,4))
      expect(tri1.triangle?()).to eq(true)
      expect(tri2 = Triangle.new(2,3,5))
      expect(tri2.triangle?()).to eq(false)
      expect(tri3 = Triangle.new(2,10,4))
      expect(tri3.triangle?()).to eq(false)
      expect(tri4 = Triangle.new(10,3,5))
      expect(tri4.triangle?()).to eq(false)
    end

    it ("equilateral?() returns true if all sides are the same.") do
      expect(tri = Triangle.new(2,3,4))
      expect(tri.equilateral?()).to eq(false)
      expect(tri2 = Triangle.new(2,2,2))
      expect(tri2.equilateral?()).to eq(true)
    end

    it ("isosolese?() returns true if exactly two sides are the same.") do
      expect(tri = Triangle.new(2,3,4))
      expect(tri.isosolese?()).to eq(false)
      expect(tri2 = Triangle.new(2,3,2))
      expect(tri2.isosolese?()).to eq(true)
      expect(tri3 = Triangle.new(3,3,3))
      expect(tri3.isosolese?()).to eq(false)
    end

    it ("scalene?() returns true if no sides are the same and still a triangle.") do
      expect(tri = Triangle.new(2,3,4))
      expect(tri.scalene?()).to eq(true)
      expect(tri2 = Triangle.new(2,3,11))
      expect(tri2.scalene?()).to eq(false)
      expect(tri3 = Triangle.new(3,3,3))
      expect(tri3.scalene?()).to eq(false)
    end

    it ("tri_type() tells you what type of triangle it is.") do
      expect(tri2 = Triangle.new(2,3,5))
      expect(tri2.tri_type()).to eq("Not a triangle")

      expect(tri1 = Triangle.new(2,3,4))
      expect(tri1.tri_type()).to eq("Scalene")

      expect(tri3 = Triangle.new(2,3,2))
      expect(tri3.tri_type()).to eq("Isosolese")

      expect(tri3 = Triangle.new(2,2,2))
      expect(tri3.tri_type()).to eq("Equilateral")
    end

  end
end
