class DatabaseSearcher

  def init
    @lambda = -> (key, database) { return database.search(key) }
  end

  def init-database(db)
    @database = db
  end
  
  def search-call(key, database)
    return @lambda.call(key. database)
  end

  def search-call-key(key)
    return @lambda.call(key, @database)
  end
  
end
