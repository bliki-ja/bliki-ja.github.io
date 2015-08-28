require 'open-uri'
require 'nokogiri'
Dir.glob("C3.md").each do |i|
    name = i.gsub(/\.md/, '')
    url = "http://martinfowler.com/bliki/#{name}.html"
    html = open(url).read
    doc = Nokogiri::HTML.parse(html)
  p doc.xpath('//p[@class="tags"]/a').map{|a| a.children.first.to_s }.join(';')
end
