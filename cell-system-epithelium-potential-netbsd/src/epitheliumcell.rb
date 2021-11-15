load 'cell.rb'
load 'epitheliumenergy.rb'

class EpitheliumCell < Cell 

  def initiialize(potentialthreshold = rand)
    @energy = EpitheliumEnergy.new
    @potthreshold = potentialthreshold
  end

  def potential
    ### FIXME calculate energy
  end

  def getpotential
    return @potthreshold
  end

end
