require 'sdl'

load "roguemainloop.rb"
load "plainsroom1.rb"

SDL.init( SDL::INIT_EVERYTHING )
screen = SDL::setVideoMode(640,480,16,SDL::SWSURFACE) 

#filename = "./pics/test.bmp"
#image = SDL::Surface.loadBMP(filename)

### puts(image)

#x = 100
#y = 100

room = PlainsRoom1.new
room.init

rogue = RogueMainLoop.new
rogue.init(screen)
rogue.mainloop

sleep(1000)
