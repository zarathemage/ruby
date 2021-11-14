load 'animatedentity.rb'

class GnomeThief < AnimatedEntity

  def init(x,y)
    super
    @x = x
    @y = y

    @imagelib.add("./pics")
  end

  def update
    ### FIXME
    return 0
  end

end
