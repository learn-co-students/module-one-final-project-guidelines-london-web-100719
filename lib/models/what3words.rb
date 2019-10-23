require 'uri'
require 'net/http'
require 'json'
require 'pry'

def get_coordinates(three_words)

  url = URI("https://api.what3words.com/v3/convert-to-coordinates?key=6RXCEY3L&words=#{three_words}&format=json")

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Get.new(url)

  response = http.request(request)
  output = JSON.parse(response.read_body)

  if output == {"error"=>{"code"=>"BadWords", "message"=>"words must be a valid 3 word address, such as filled.count.soap or ///filled.count.soap"}}
    output = "error"
  else                  

    lon = output["coordinates"]["lng"]
    lat = output["coordinates"]["lat"]

    coordinates = [lat, lon]
  end

end

def get_distance loc1, loc2 #using Haversine formula.

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

def get_distance_between(origin_address, dest_address)

a_one = get_coordinates(origin_address)
a_two = get_coordinates(dest_address)
if a_one == "error" || a_two == "error"
  puts "That is not a valid what3words address"
else
dist = get_distance(a_one, a_two)
dist.round(2)
end

end



# puts get_distance_between("fence.gross.bats", "salad.likening.sprinting")
get_coordinates("shit")
# system 'open https://what3words.com'
