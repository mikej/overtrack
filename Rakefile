$:.unshift(File.expand_path('../lib', __FILE__))

require "overtrack"

namespace :overtrack do
  desc "Parse list of feeds from Overcast Podcasts page"
  task :parse do
    crawler = Overtrack::Parser.new
    crawler.parse("test.html")
  end
end
