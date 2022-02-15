class RestaurantsController < ApplicationController
  # This is called a rails filter. It calls a method before the action is performed.
  # There are more filters, feels free to look them up ;)
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    # we need to bring all the restaurants from the database
    @restaurants = Restaurant.all
  end

  def show
    # get the id from the url through the params.
    # find the specific restaurant instance from the database, using that id
    # @restaurant = Restaurant.find(params[:id])
  end

  def new
    # we need a restaurant instance, but with no information
    # for the form_for or simple_form_for (they both require an empty instance)
    # this means that all the form fields will be blank
    @restaurant = Restaurant.new
  end

  def create
    # 1. get all the data the user entered in the /new form (params move data from page to page 😉)
    # 2. make a new Restaurant instance with that info
    # SIDENOTE. For 3 + 4, this is a bit of an extra step, we will see this thoroughly tomorrow
    # 3. if we manage to save it to the database, redirect to the restaurant's show page
    # 4. otherwse render the form from the new action
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render "new"
    end
  end

  def edit
    # we need the restaurant we're editing,
    # and its ID is in the url, available to us through the params
    # @restaurant = Restaurant.find(params[:id])
  end

  def update
    # we need the restaurant we're editing,
    # and its ID is in the url, available to us through the params
    # @restaurant = Restaurant.find(params[:id])

    # we need to take what the user filled into the form and update the restaurant in the db
    @restaurant.update(restaurant_params)

    # redirect to the show page
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    # get the single restaurant we're destroying
    # @restaurant = Restaurant.find(params[:id])

    # delete it
     @restaurant.destroy

    #  redirect to the index, since the show page of the restaurant is not there anymore 😉
     redirect_to restaurants_path
  end

  private

  # STRONG PARAMS
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

end
