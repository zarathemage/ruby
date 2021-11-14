load 'sendstring.rb'

###@socket.write(bytes("USER " + botnick + " " + botnick +" " + botnick + " :python\n"))###, "UTF-8"))

class UserSendString < SendString

  def init(botnick)
    super("USER " + botnick + " "  + botnick + " " + botnick + " :ruby\n")
  end
  
end
