require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html) 

courses = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

courses_text = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC").text

courses_object = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0]

courses_name = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].name 

courses_attributes = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].attributes

courses.each do |course|
    puts course.text.strip
end 

puts each_course