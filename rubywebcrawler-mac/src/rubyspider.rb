load 'database.rb'
load 'spider.rb'

class WebSpiderPogram

  def init
    @spider = Spider.new
    @db = Database.new
  end

  def spider(db)
    @spider.crawl(db)
  end
  
end
