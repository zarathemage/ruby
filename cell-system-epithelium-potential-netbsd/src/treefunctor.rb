load 'tree.rb'

class TreeFunctor

  def initialize(tree)
    @tree = tree
  end

  def apply
    return @tree.apply(self)
    ### subclass responsability
  end

end
