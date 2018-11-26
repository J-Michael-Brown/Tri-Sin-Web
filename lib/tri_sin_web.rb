class Triangle
  def initialize(a,b,c)
    @a = a.to_i
    @b = b.to_i
    @c = c.to_i
  end

  def triangle?
    if (@c < (@a+@b) && @a < (@c+@b) && @b < (@a+@c))
      true
    else
      false
    end
  end

  def equilateral?
    if @a == @b && @b == @c && @a == @c
      return true
    end
    false
  end

  def isosolese?
    if (@a == @b || @b == @c || @a == @c) && !equilateral?
      return true
    end
    false
  end

  def scalene?
    if (@a != @b && @b != @c && @a != @c) && triangle?
      return true
    end
    false
  end

  def tri_type
    if !triangle?
      return "Not a triangle"
    else
      if equilateral?
        return "Equilateral"
      elsif isosolese?
        return "Isosolese"
      elsif scalene?
        return "Scalene"
      end
    end
  end
end
