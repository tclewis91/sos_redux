require 'rest-client'

URL = 'https://www.kimonolabs.com/api/' + ENV["kimono_labs_api_id"] + '?apikey=' + ENV["kimono_labs_api_key"]
puts URL
es = RestClient::Request.execute(:url => URL, :method => :get, :verify_ssl => false)
hsh = JSON.parse(res)
hsh['results']['Band Sankes'].each do |row|
  Snake.create ({ name: row['name'],
                  venom: row['venom']
                  image: row['image']
                        })
              end

URL = 'https://www.kimonolabs.com/api/' + ENV["kimono_labs_api_id"] + '?apikey=' + ENV["kimono_labs_api_key"]
puts URL
res = RestClient::Request.execute(:url => URL, :method => :get, :verify_ssl => false)
hsh = JSON.parse(res)
hsh['results']['Stripes Sankes'].each do |row|
  Snake.create ({ name: row['name'],
                  venom: row['venom']
                  image: row['image']
                        })
              end

URL = 'https://www.kimonolabs.com/api/' + ENV["kimono_labs_api_id"] + '?apikey=' + ENV["kimono_labs_api_key"]
puts URL
res = RestClient::Request.execute(:url => URL, :method => :get, :verify_ssl => false)
hsh = JSON.parse(res)
hsh['results']['Solid Snakes'].each do |row|
  Snake.create ({ name: row['name'],
                  venom: row['venom']
                  image: row['image']
                        })
              end

hsh['results']['Blotches Snakes'].each do |row|
  Snake.create ({ name: row['name'],
                  venom: row['venom']
                  image: row['image']
                        })
              end
