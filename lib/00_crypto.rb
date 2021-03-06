require 'nokogiri'
require 'rubygems'
require 'open-uri'

def crypto
    
  value = []
  currency = []

  page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

  page.xpath('//a[@class = "link-secondary"]').each do |devise|
    currency << devise.text
  end

# print currency

  page.xpath('//a[@class = "price"]').each do |valeur|
    value << valeur.text
  end

# print value

  values = value.map{|e| e.delete('$').to_f }

  my_hash = Hash[currency.zip(values.map)]

  a = []
  my_hash.each {|index| a << {index[0] => index[1]}}

  return a
end

a = crypto