require 'socket'

class Network 
  
  def init(hostname)
    @socket = TCPSocket.new(hostname, 6667)

    while (string = @socket.gets)
      puts string
      if string == "" then
        break
      end
    end
    
    # Perform user authentication
    puts "USER - rubybot\n"
    sendstring = "USER rubybot rubybot rubybot :ruby\n"
    @socket.write(sendstring.bytes)
    ###@socket.write(bytes("USER " + botnick + " " + botnick +" " + botnick + " :python\n"))###, "UTF-8"))

    puts "NICK - rubybot\n"
    sendstring = "NICK rubybot\n"
    @socket.write(sendstring.bytes)
    ###self.irc.send(bytes("NICK " + botnick + "\n"))###, "UTF-8"))
    ### FIXME
    ### self.irc.send(bytes("NICKSERV IDENTIFY " + botnickpass + " " + botpass + "\n"))###, "UTF-8"))
    sleep(5)

    # join the channel
    print "JOIN - rubybot\n"
    sendstring = "JOIN #test\n"
    @socket.write(sendstring)###bytes("JOIN " + channel + "\n"))###, "UTF-8"))

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
