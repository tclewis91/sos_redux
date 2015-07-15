require 'rest_client'

res = RestClient::Request.execute(:url => 'https://www.kimonolabs.com/api/bd7d2c66?apikey=N5gmFp4txNaM14V0074wiv7FAtDuRr1L', :method => :get, :verify_ssl => false)
hsh = JSON.parse(res)
hsh[‘results’][‘collection1’].each do |x|

  def change_name(collection)
   if row['scientific_name']
      return row['scientific_name']
   else
      return row['genus']['text'], row['species']['text']
    end

  Snake.create({ scientific_name: ['scientific_name’],
                  name: ['name'],
                  image: ['name']['href’] })
    end

  def name_match(collection)
    Snake.select(:scientific_name).group(:scientific_name).having("count(*) > 1")
  end

  def snake(collection)

def



