load 'vector.rb'

class Matrix 

  ### unidimenional array
  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @m = Array.new

    (0..rows*columns).each do |o|
      @m.append(rand)
    end
  end

  def multiplyvector(vectorobj)
    returnv = Vector.new
    (0..rows).each do |r|
      sum = 0.0
      (0..columns).each do |c|
        sum += @m[rows * r + columns] * vectorobj[c]
      end
      returnv.set(c,sum)
    end

    return returnv
  end

end
