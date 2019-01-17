=begin require 'Nokogiri'
require 'rubygems'
require 'open-uri'

page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

villes_array = page.xpath('//*[@class="lientxt"]')
villes = []

villes_array.each do |villes_array|
    villes << villes_array.text
end

print villes_array

//*[@id="voyance-par-telephone"]/table/tbody/tr[2]/td/table/tbody/tr/td[2]/p/a[1]
=end

require 'nokogiri'
require 'rubygems'
require 'open-uri'
def get_townhall_urls
  townhall_urls = []
  page = Nokogiri::HTML(open("http://www.annuaire-des-mairies.com/val-d-oise.html"))
  page.xpath('//p/a').each do |url|
  townhall_urls = url.text
puts townhall_urls
#  townhall_urls_complete = townhall_urls.map{|i| i.downcase}
  end
end
get_townhall_urls
