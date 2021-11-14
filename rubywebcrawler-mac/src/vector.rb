class Vector

  def init(rows)
    @vector = Array.new

    for i in 0..rows do
      @vector.append(1/rand)
    end
  end

  ### FIXME [] op
  def get(index)
    return @vector[index]
  end
  
  def set(value, index)
    @vector[index] = value
  end

  def length
    return @vector.length
  end

end
