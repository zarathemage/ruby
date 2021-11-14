load 'sampler.rb'

class MetropolisSampler < Sampler

  def init
    super

    @value = rand
    
  end

  def algorithm

    r = rand
    
    if @value < r then
      @value = r
      return @value
    else
      return -1
    end
      
  end

    def max-entropy
      return @value
    end
    
end
