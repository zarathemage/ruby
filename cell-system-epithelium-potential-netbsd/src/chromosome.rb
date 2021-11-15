class Chromosome

  def initiialize
    @genes = Array.new
  end

  def addgene(gene = rand)
    @genes.append(gene)
  end

  def length
    return @genes.length
  end

  def fitness(fitnessfunctor)
    return fitnessfunctor.apply(self)
  end

end
