class HousesController < ApplicationController

  def index
    # lists all
  end

  def show
    # TODO: sort on active house or non active house
    # for now we only take care of active house
    active_house_id = current_user.active_house_id

    # redirect to join or create screen if no active house
    if active_house_id.nil?
      redirect_to new_house_path
    else
      @house = House.find(active_house_id)
      render :show
    end
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
