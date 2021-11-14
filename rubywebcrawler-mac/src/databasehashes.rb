class DatabaseHashes
  
  def init
    @interns = Hash.new
    @externs = Hash.new ### cache
  end

  def store(key, value)
    @interns.store(key, value)
  end

  def search(key)
    return @externs[key]
  end
  
  ### internal API
  def field-advances(key)

    ### make an algo which caches the latest searches
    
    if @interns[key]
      @externs.store(key, @interns[key])
      return 0
    end
    return -1
  end

  def isextern(key)
    if @externs[key]
      return @externs[key]
    else
      nil
    end
    
    def isintern(key)
      if @interns[key]
        return @interns[key]
    else
      nil
      end
    end
  end


end
