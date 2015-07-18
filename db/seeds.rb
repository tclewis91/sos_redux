require 'httparty'

URL = 'https://www.kimonolabs.com/api/' + ENV["kimono_labs_api_id"] + '?apikey=' + ENV["kimono_labs_api_key"]
puts URL

res = HTTPARTY::Request.execute(:url => URL, :method => :get, :verify_ssl => false)
hsh = JSON.parse(res)
hsh['results']['Band Snakes'].each do |row|
  Snake.create ({ name: row['name'],
                  venom: row['venom']
                  image: row['image']
                        })

<<<<<<< HEAD
2
URL = 'https://www.kimonolabs.com/api/' + ENV["kimono_labs_api_id"] + '?apikey=' + ENV["kimono_labs_api_key"]
puts URL


# res = RestClient::Request.execute(:url => URL, :method => :get, :verify_ssl => false)
# hsh = JSON.parse(res)
# hsh['results']['Stripes Sankes'].each do |row|
=======
# URL = 'https://www.kimonolabs.com/api/' + ENV["kimono_labs_api_id"] + '?apikey=' + ENV["kimono_labs_api_key"]
# puts URL

# res = HTTPARTY::Request.execute(:url => URL, :method => :get, :verify_ssl => false)
# hsh = JSON.parse(res)
# hsh['results']['Stripes Sankes'].each do |row|

# URL = 'https://www.kimonolabs.com/api/' + ENV["kimono_labs_api_id"] + '?apikey=' + ENV["kimono_labs_api_key"]
# puts URL

# res = HTTPARTY::Request.execute(:url => URL, :method => :get, :verify_ssl => false)
# hsh = JSON.parse(res)
# hsh['results']['Solid Snakes'].each do |row|
>>>>>>> d7dbcdb0210f5053cb38b7d6711d5de5a7186f4f

# URL = 'https://www.kimonolabs.com/api/' + ENV["kimono_labs_api_id"] + '?apikey=' + ENV["kimono_labs_api_key"]
# puts URL

<<<<<<< HEAD
# res = RestClient::Request.execute(:url => URL, :method => :get, :verify_ssl => false)
# hsh = JSON.parse(res)
# hsh['results']['Solid Snakes'].each do |row|

# URL = 'https://www.kimonolabs.com/api/' + ENV["kimono_labs_api_id"] + '?apikey=' + ENV["kimono_labs_api_key"]
# puts URL

# res = RestClient::Request.execute(:url => URL, :method => :get, :verify_ssl => false)
# hsh = JSON.parse(res)
# hsh['results']['Blotches Snakes'].each do |row|


=======
# res = HTTPARTY::Request.execute(:url => URL, :method => :get, :verify_ssl => false)
# hsh = JSON.parse(res)
# hsh['results']['Blotches Snakes'].each do |row|


# def change_name(row)
#   if row['scientific_name']
#      scientific_name = row['scientific_name']
#   else
#     scientific_name = "#{row['genus']['text']} #{row['species']['text']}"
#   end
#   if Snake.where(scientific_name: scientific_name).count.zero?
#     Snake.create({ scientific_name: scientific_name,
#                    name: row['name'],
#                   image: row['name']['href'],
#                   characteristic: row['url'] })
#     end
#   end
# end
>>>>>>> d7dbcdb0210f5053cb38b7d6711d5de5a7186f4f



# name
# color
# api
# image


