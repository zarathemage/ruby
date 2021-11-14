load 'entity.rb'

load 'imagelibrary.rb'

class AnimatedEntity < Entity

  def init
    @x = 0
    @y = 0

    @imagelib = ImageLibrary.new
    @imagelib.init
    
  end

  def update
    return super
  end
  
  def blit(screen)
    super(@imagelib.image, @x,@y)
  end
  
end
