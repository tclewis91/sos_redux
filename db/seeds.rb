require 'rest_client'

URL = 'https://www.kimonolabs.com/api/' + ENV["kimono_labs_api_id"] + '?apikey=' + ENV["kimono_labs_api_key"]

puts URL

res = RestClient::Request.execute(:url => URL, :method => :get, :verify_ssl => false)
hsh = JSON.parse(res)
hsh['results']['collection1'].each do |row|


def change_name(row)
  if row['scientific_name']
     scientific_name = row['scientific_name']
  else
    scientific_name = "#{row['genus']['text']} #{row['species']['text']}"
  end
  if Snake.where(scientific_name: scientific_name).count.zero?
    Snake.create({ scientific_name: scientific_name,
                   name: row['name'],
                  image: row['name']['href'],
                  characteristic: row['url'] })
    end
  end
end



