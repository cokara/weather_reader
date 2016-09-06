response = HTTParty.get("https://query.yahooapis.com/v1/public/yql?q=select%20item.condition%20from%20weather.forecast%20where%20woeid%20%3D2514815%20&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys")
data = response.parsed_response
temp = data["query"]["results"]["channel"]["item"]["condition"]["temp"]
descr = data["query"]["results"]["channel"]["item"]["condition"]["text"]

get '/' do
  haml :index, locals: {temp: temp, descr: descr}
end
