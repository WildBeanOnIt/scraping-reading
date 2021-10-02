require 'nokogiri'
require 'open-uri'
require 'pry'
html = URI.open("https://flatironschool.com/")

# html = URI.open("https://juliospage.netlify.app/")      testing from my personal website.
# Nokogiri::XML::NodeSet
doc = Nokogiri::HTML5(html)
#  binding.pry
p doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].children
# puts doc.css(".intro")   from my personal website.
course = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

course.each do |course|
    puts course.text.strip
end