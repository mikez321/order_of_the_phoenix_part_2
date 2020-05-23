class SearchController < ApplicationController
  def index
    house_name = params["house"]
    member_info = PotterService.new(house_name)
    @house = House.new(house_name, member_info.parsed)
  end
end
