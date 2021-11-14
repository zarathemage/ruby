require 'socket'

require 'usersendstring.rb'
require 'nicksendstring.rb'
require 'joinsendstring.rb'

class Network 
  
  def init(hostname)
    @socket = TCPSocket.new(hostname, 6667)

    while (string = @socket.gets)
      puts string
      if string == "" then
        break
      end
    end

    botnick = 'ircbot'
    channel = '#test'
    
    # Perform user authentication
    puts "USER - rubybot\n"
    send(UserSendString.new.init(botnick))

    puts "NICK - rubybot\n"
    send(NickSendString.new.init(botnick))

    ### FIXME
    ### send("NICKSERV IDENTIFY " + botnickpass + " " + botpass + "\n")
    sleep(5)

    # join the channel
    print "JOIN - rubybot\n"
    send(JoinSendString.new.init(channel))

  end

  def send(sendstring)
    @socket.write(sendstring.get.bytes)
  end
  
  def mainloop

    while (1)

      string = @socket.recv(2040)

      puts string
      
      if string[0..4] == 'PING' then
        ###self.irc.send(bytes('PONG ' + resp.split() [1] + '\r\n'))###, "UTF-8")) 
        print "PING? PONG!\n"
        @socket.write("PONG\r\n")
        
      end
      
    end
    
  end
end



if ARGV.length <= 0 then
  print "Usage : rubybot hostname"
  exit
end

n = Network.new
n.init(ARGV[0])
n.mainloop
