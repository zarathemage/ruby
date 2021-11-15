load 'tree.rb'
load 'treefunctor.rb'

class GlandSimulator

  def GlandTreeFunctor < TreeFunctor
    def initialize(tree)
      @tree = tree
    end

    def apply
      @tree.apply(self)
    end
  end 

  def initialize
    @glandtree = Tree.new
    @glandtreefunctor = GlandTreeFunctor.new
  end

  def energyofsecretion
    @glandtree.sumfunctor ### FIXME
  end

end
