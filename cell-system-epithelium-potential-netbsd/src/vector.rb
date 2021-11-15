class Vector

  def initialize(array)
    @v = Array.new

    array.each do |o|
      @v.append(o)
    end
  end

  def set(index, value)
    @v[index] = value
  end

  def add(el)
    @v.append(el)
  end

  def [](index) 
    return @v[index]
  end

end
