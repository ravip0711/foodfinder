class HomeController < ApplicationController
  def index
  end

  def search
    if params[:commit] == "List All"
      redirect_to list_all_path(:zip_code => params[:zip_code])
    else
      restaurant_search = Yelp.client.search(params[:zip_code], {term: 'food'})
      @random_restaurant = restaurant_search.businesses[rand(restaurant_search.businesses.length)]
    end
  end

  def list_all
    restaurant_search = Yelp.client.search(params[:zip_code], {term: 'food'})
    @restaurants = restaurant_search.businesses
  end
end
