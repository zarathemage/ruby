require 'sdl'

SDL.init( SDL::INIT_EVERYTHING )
screen = SDL::setVideoMode(640,480,16,SDL::SWSURFACE) 

filename = "./pics/test.bmp"

image = SDL::Surface.loadBMP(filename)

### puts(image)

x = 100
y = 100

while 1
  event=SDL::Event.new
  ###key=Key.new
  
  if event.poll != 0
  then
    if event.type==SDL::Event::QUIT
    then
      break
    end
    
    if event.type==SDL::Event::KEYDOWN
    then
      exit if event.keySym==SDL::Key::ESCAPE
    else
      x -= 10
    end
    
    screen.put(image, x,y)
    ###SDL::Surface.transformBlit(src,dst,angle,xscale,yscale,px,py,qx,qy,flags)
    screen.flip
    
    
  end 
end

###sleep(1000)
