require 'rest-client'

URL = 'https://www.kimonolabs.com/api/' + ENV["kimono_labs_api_id"] + '?apikey=' + ENV["kimono_labs_api_key"]
puts URL
res = RestClient::Request.execute(:url => URL, :method => :get, :verify_ssl => false)
hsh = JSON.parse(res)
hsh['results']['Band Snakes'].each do |x|
  Snake.create({ name: x['name'],
                  venom: x['venom'],
                  color: x['color']['text'],
                  image: x['image']['src']
                        })
              end
