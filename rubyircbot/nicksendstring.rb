load 'sendstring.rb'

###self.irc.send(bytes("NICK " + botnick + "\n"))###, "UTF-8"))

class NICKSendString < SendString

  def init(botnick)
    super("NICK " + botnick + "\n")
  end
  
end
