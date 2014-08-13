require 'sinatra'
require 'httparty'
require 'nokogiri'

response = HTTParty.get("http://weather.yahooapis.com/forecastrss?w=2514815")
temp = Nokogiri::XML(response.body).css('yweather|condition').first.attributes['temp'].value
descr = Nokogiri::XML(response.body).css('yweather|condition').first.attributes['text'].value

get '/' do
  haml :index, locals: {temp: temp, descr: descr}
end
