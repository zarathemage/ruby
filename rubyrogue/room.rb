class Room

  def init(filename)
    @x = 0
    @y = 0
    @bgimage = SDL::Surface.loadBMP(filename)
  end

  def blit(screen)
    screen.put(@bgimage, @x,@y)
  end
  
end
