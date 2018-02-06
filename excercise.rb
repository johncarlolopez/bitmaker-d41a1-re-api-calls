require 'httparty'
# Excercise 1

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
toronto_wards_json = JSON.parse(toronto_wards_response.body)

puts "\nToronto Wards:"
toronto_wards_json['objects'].each {|ward|
  puts ward['name'].split(' ')[0..-2].join(' ')
}

# Excercise 2

federal_electoral_districts_response = HTTParty.get('https://represent.opennorth.ca/postcodes/M1H2Z9/')
federal_electoral_districts_json = JSON.parse(federal_electoral_districts_response.body)

puts "\nRepresentatives for postal code M2H2Z9:"
federal_electoral_districts_json['representatives_centroid'].each {|representative|
  puts "#{representative['first_name']} #{representative['last_name']} - #{representative['representative_set_name']}"

}
