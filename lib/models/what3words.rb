require 'uri'
require 'net/http'
require 'json'
require 'pry'

# three_words = "feared.later.bright"

# url = URI("https://api.what3words.com/v3/convert-to-coordinates?key=6RXCEY3L&words=#{three_words}&format=json")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(url)

# response = http.request(request)
# output = JSON.parse(response.read_body)
                       

# lon = output["coordinates"]["lng"]
# lat = output["coordinates"]["lat"]

def distance loc1, loc2 #using Haversine formula.
  rad_per_deg = Math::PI/180  # PI / 180
  rkm = 6371                  # Earth radius in kilometers
  rm = rkm * 1000             # Radius in meters

  dlat_rad = (loc2[0]-loc1[0]) * rad_per_deg  # Delta, converted to rad
  dlon_rad = (loc2[1]-loc1[1]) * rad_per_deg

  lat1_rad, lon1_rad = loc1.map {|i| i * rad_per_deg }
  lat2_rad, lon2_rad = loc2.map {|i| i * rad_per_deg }

  a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
  c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))

  (rm * c)/1000 # Delta in kilometers
end

puts distance [46.3625, 15.114444],[46.055556, 14.508333]
