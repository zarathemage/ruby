load 'graphnode.rb'

class CellNode < GraphNode

  def initialize
    super 
  end

  def getrandom(randomindex)
    return @connection[randomindex]
  end

end
