require 'nokogiri'
require 'rubygems'
require 'open-uri'

def get_deputy_email
    page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
    list = page.xpath('//*[@id="deputes-list"]//li/a/text()')
    deputy_name = list.map { |deputy_info| deputy_info.to_s.split.drop(1) }
    contact = deputy_name.map { |first_name, last_name|
        email = first_name + '.' + last_name + '@assemblee-nationale.fr'
        Hash[first_name: first_name, last_name: last_name, email: email]
    }
    # binding.pry
end

def perform
    get_deputy_email
end

puts perform
