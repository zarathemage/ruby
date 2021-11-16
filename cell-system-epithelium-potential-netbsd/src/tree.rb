load 'energy.rb'

class Tree

  ### subclass TreeNode
  class TreeNode

    def initialize
      @energy = Energy.new ### NOTE : this contains the functionality of 
                            ### of the epithelium kinetic or chemical energy  
      @children = Array.new
    end

    def energy
      return @energy.get
    end

    def add(e)
      if @children.length == 0 then
        return false
      end

      (0..@children.length).each do |i|
        if @children[i].energy > e then
          @children.insert(e)
          return
        end
      end
      (0..@children.length).each do |i|
        @children[i].add(e)
      end
    end

    def search(e)

      if @children.length == 0 then
        return false
      end

      (0..@children.length).each do |i|
        if @children[i].energy == e then
          return true
        else
          @children[i].search(e)
        end
      end
    end
  end

  def initialize
    @root = TreeNode.new
  end

  def add(e)
    @root.add(e)
  end

  def apply(treeiterator)
    ### FIXME
  end

end
