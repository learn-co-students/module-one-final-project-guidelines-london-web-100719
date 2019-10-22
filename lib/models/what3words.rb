require 'uri'
require 'net/http'
require 'json'
require 'pry'

three_words = "sweated.braved.untruth"

url = URI("https://api.what3words.com/v3/convert-to-coordinates?key=6RXCEY3L&words=#{three_words}&format=json")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)

response = http.request(request)
output = JSON.parse(response.read_body)
                       

lon = output["coordinates"]["lng"]
lat = output["coordinates"]["lat"]
puts lat.to_s + " " + lon.to_s