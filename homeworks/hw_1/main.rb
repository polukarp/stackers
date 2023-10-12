require 'nokogiri'
require 'open-uri'

url = 'https://www.anekdot.ru/last/mem/'
doc = Nokogiri::HTML(URI.open(url))



doc.search('div.topicbox').each do |topic|
  puts topic.text
end
