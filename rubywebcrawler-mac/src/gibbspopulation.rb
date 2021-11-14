load 'population.rb'
load 'random.rb'

class GibbsPopulation < Population

  def init
    super
    @random = Random.new
  end

  def transition-probability ### Gibss math (wikipedia.org)
    d = rand(0..@population.length)
    p = 0.0

    gy = @population[d]
    
    for i in 0..@population.length
      if i == d
        @population[i] = @random.generate

        p += @population[i]
      end
    end

    return 1 / d * (gy / p)
  end

end
