class FitnessFunctorBase

  def initialize

  end

  def apply(chromosome)

    sum = 0.0

    chromosome.genes.each do |g|
      sum += g
    end

    return sum / chromosome.length()

  end  

end
