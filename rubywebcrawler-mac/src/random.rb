class Random

  def init
    @random = rand
    @inverse = 1 / @random
  end

  def generate
    @random = rand
    @inverse = 1 / @random

    return @random
  end

  def get-long
    return @rand
  end

  def get-probability
    return @inverse
  end
  
end
