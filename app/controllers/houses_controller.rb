class HousesController < ApplicationController

  def index
    # lists all
  end

  def show
    # TODO: sort on active house or non active house
    # for now we only take care of active house
    active_house_id = current_user.active_house_id

    # redirect to join or create screen if no active house
    redirect_to new_house if not active_house_id

    @house = House.find(active_house_id)
  end

  def edit
  end

  def update
  end

  def new

  end

  def create
  end

  def destroy
  end
end
