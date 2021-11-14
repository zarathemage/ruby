load 'database.rb'
load 'metropolissampler.rb'

### an indexing machine/db based on the metropolis algorithm

def MetropolisDatabase < Database

  def init
    super

    @sampler = MetropolisSampler.new
    
  end

  def add(key, value)
    if @sampler.algorithm > 0
      @db.store(key, value)
    else
      @db.store(key, nil)
    end
    
  end

  def value(key)
    
    val = @sampler.algorithm

    ### if there is a better entropy, store the value e.g. from cache
    
    if @db.field-advances(key)
      return @db.search(key)
    else if val > 0
      @db.store(val, key)
      return @db.search(key)
    end
  end
  
end
