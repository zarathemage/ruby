class GraphNode

  def initialize
    @connections = Array.new
  end

  def addconnection(graphnode)
    @connections.append(graphnode)
  end

end
