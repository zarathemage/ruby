load 'population.rb'

class Distribution < Population

  def init
    super
  end

  def sum
    sum = 0.0

    for i in 0..@population.length do
      sum += @population[i]
    end

    return sum
  end

  def estimate
    return self.sum / @population.length
  end

  def variance
    var = 0.0

    est = self.estimate
    
    for i in 0..@population.length
      var += (@population[i] - est) ** 2 
    end

    return var / @population.length
    
  end
  
end
