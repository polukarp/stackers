require 'nokogiri'
require 'open-uri'

url = 'https://www.anekdot.ru/last/mem/'
doc = Nokogiri::HTML(URI.open(url))

text = doc.text
topics = doc.search("div.topicbox").each do |topic|
  puts topic.text
end
