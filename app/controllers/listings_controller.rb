class ListingsController < ApplicationController
  def index
     @listings = Listing.all
  end

  def show
    @listings = Listing.find(params[:id])
  end
  
  def new
  end
  def create
  end
  def edit
  end
  def update
  end
  def destroy
  end
end
