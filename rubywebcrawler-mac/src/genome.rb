class Genome

  def init(len)
    @genome = Array.new
    
    while (len-=1 > 0)
      self.add(1/rand)
    end
    
  end

  def add(x)
    @genome.append(x)
  end

  def length
    return length(@genome)
  end
  
end
