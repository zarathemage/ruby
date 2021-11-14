load 'loopobject.rb'

class RogueMainLoop < LoopObject

  def init(screen)
    super(screen)
  end

  def loop_once
    
  end

  def mainloop
    while @state_flag
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
  end
end
