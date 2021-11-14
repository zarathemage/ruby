load 'databasehashes.rb'

class Database

  def init
    @db = DatabaseHashes.new
  end

  def search(key)
    return @db.search(key)
  end
  
end
