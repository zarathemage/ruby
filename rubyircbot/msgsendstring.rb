load 'sendstring.rb'

###self.irc.send(bytes("PRIVMSG " + channel + " " + msg + "\n"))###, "UTF-8"))

class MsgSendString < SendString

  def init(channel, msg)
    super("PRIVMSG " + channel + " " + msg + "\n")
  end
  
end
