load 'vector.rb'

class Matrix

  def init(rows,cols)
    @matrix = Array.new
    for i in 0..rows do
      @matrix.append(Array.new)
      for j in 0..cols do
        @matrix[i].append(1/rand)
      end
    end
  end

  def multiply-by-vector(v)
    resultv = Vector.new
    
    for i in @matrix.length do
      sum = 0.0
      for j in v.length do
        sum += @matrix[i][j] * v.get(j)
      end        
        resultv.set(sum, i)
    end
  end

end
