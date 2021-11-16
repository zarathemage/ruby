load 'graph.rb'
load 'cellnode.rb'

class CellGraph < Graph

  def initialize
    @nodes = CellNode.new
  end
end
