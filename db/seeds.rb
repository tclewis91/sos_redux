require 'rest-client'

URL = 'https://www.kimonolabs.com/api/' + ENV["kimono_labs_api_key_id"] + '?apikey=' + ENV["kimono_labs_api_key"]
puts URL
res = RestClient::Request.execute(:url => URL, :method => :get, :verify_ssl => false)
hsh = JSON.parse(res)
hsh['results']['Band Snakes'].each do |row|
  Snake.create ({ name: row['name'],
                  venom: row['venom'],
                  color: row['color']['text'],
                  image: row['image']['href']
                        })
              end
snake_id =
