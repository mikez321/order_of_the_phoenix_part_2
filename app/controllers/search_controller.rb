class SearchController < ApplicationController
  def index
    member_info = PotterService.new(params['house'])
    @house = House.new(params['house'], member_info.parsed)
  end
end
