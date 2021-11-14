load 'sampler.rb'

class GenomeEnergySampler < Sampler

  def init(genome)
    @genome = genome
  end

  def fitness

    l = @genome.length
    fitness = 0.0
    
    while (l -= 1 > 0)
      fitness += @genome[l]
    end

    return fitness / @genome.length
  end

  ### several fitness/energy functions :

  def partial-energy
    return self.partial-energy
  
  def partial-energy1

    r = rand(1..@genome.length)
    energy = 0.0
    
    for i in 1..r do
      energy += @genome[i]
    end

    return energy
  end

end
  
