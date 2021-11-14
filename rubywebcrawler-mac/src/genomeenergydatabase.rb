load 'database.rb'
load 'genomenergysampler.rb'

class GenomeEnergyDatabase < Database

  def init
    super
    @sampler = GenomeEnergySampler.new
  end

  def add(value)
    @db.store(@sampler.partial-energy, value)
  end
   
end
