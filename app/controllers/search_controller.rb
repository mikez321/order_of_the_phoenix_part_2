class SearchController < ApplicationController
  def index
    @house = House.new(params['house'])
  end
end
