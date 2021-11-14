load 'database.rb'
load 'gibsssampler.rb'

### an indexing machine/db based on the metropolis algorithm

def MetropolisDatabase < Database

  def init
    super

    @sampler = GibbsSampler.new
    
  end

  def add(key, value)
    if @sampler.algorithm > -1
      @db.store(key, value)
    else
      @db.store(key, nil)
    end
    
  end
  
end
