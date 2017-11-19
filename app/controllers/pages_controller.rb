class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ 'landing' ]

  def landing
  end

  def tmp_dashboard
    #route here just as placeholder
  end
end
