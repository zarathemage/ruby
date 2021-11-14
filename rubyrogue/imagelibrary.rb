require 'sdl'

class ImageLibrary

  def init
    @index = 0
    @surfaces = Array.new
  end

  def add(filename)
    surfaces.push(SDL::Surface.loadBMP(filename))
    index += 1
  end

  def image
    if index >= surfaces.length
      index = 0
    end
      return surfaces[index+=1]
  end
  
  def image_at_index(idx)
    return surfaces[idx]
  end
  
end
