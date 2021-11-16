load 'cellgraph.rb'

class CellSystem

  def initialize
    @graph = CellGraph.new
  end

  def addchromosome(c)
    @chromosomes.append(c)
  end

  def length
    return @chromosomes.length
  end

  def fitness(fitnessfunctor)
    sum = 0.0

    (0..@chromosomes.length).each do |c|
      sum = fitnessfunctor.apply(c)
    end
    
    return sum / @chromsomes.length
  end

end
