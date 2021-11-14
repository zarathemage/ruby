load 'sendstring.rb'

###bytes("JOIN " + channel + "\n"))###, "UTF-8"))

class JoinSendString < SendString

  def init(channel)
    super("JOIN " + channel + "\n")
  end
  
end
