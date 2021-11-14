class Entity

  def init
    @x = 0
    @y = 0
  end

  def update
    return 0
  end
  
  def blit(imagesurf, screen)
    screen.put(imagesurf, @x,@y)
  end
  
end
