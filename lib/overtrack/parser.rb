require "nokogiri"
require "pry"

URL_BASE = "https://overcast.fm"

class Overtrack
  class Parser
    def parse(filename)
      page = Nokogiri::HTML(open(filename))
      feeds = page.css("a.feedcell")
      feeds.each do |feed|
        title = feed.children.css(".titlestack .title").children.text
        url = URL_BASE + feed.attributes["href"].text
        puts "#{title} (#{url})"
      end
    end
  end
end