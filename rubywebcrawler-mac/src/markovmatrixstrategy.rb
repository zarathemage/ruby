load 'matrix.rb'
load 'vector.rb'

def MarkovMatrixStrategy

  def init
    @matrix = Matrix.new
  end

  def Nash-equilibrium(insertvector, resultvector)

    for i in 0..insertvector.length do
      if not @matrix.multiply-by-vector(insertvector).get(i) == resultvector.get(i)
        return false
      end
    end

    return true
  end
end
