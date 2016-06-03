require 'json'

before do
  content_type 'json'
end

get '/' do
  redirect to('/houses')
end

get '/houses' do
  House.all.to_json
end

get '/houses/:name' do |name|
  house = House.find(name)
  house.to_json
end
