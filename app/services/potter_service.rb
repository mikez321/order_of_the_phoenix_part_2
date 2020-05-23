class PotterService
  def initialize(house_name)
  @response = Faraday.get('https://www.potterapi.com/v1/characters') do |faraday|
    faraday.params['key'] = ENV['API_KEY']
    faraday.params['house'] = house_name
    faraday.params['orderOfThePhoenix'] = 'true'
    end
  end

  def parsed
    JSON.parse(@response.body, symbolize_names: true)
  end
end
