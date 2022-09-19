#find gem that retrieves weather
# require 'uri'
# require 'net/http'
# require 'openssl'

# url = URI("https://weatherapi-com.p.rapidapi.com/future.json?q=London&dt=2022-12-25")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(url)
# request["X-RapidAPI-Key"] = 'SIGN-UP-FOR-KEY'
# request["X-RapidAPI-Host"] = 'weatherapi-com.p.rapidapi.com'

# response = http.request(request)
# puts response.read_body