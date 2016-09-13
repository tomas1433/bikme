class ListingsController < ApplicationController
  def index
     @listings = Listing.all

  end
  def show
    @listing = Listing.find(params[:id])
  end

  def new
   @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
    redirect_to listings_path
      else
      render :new
    end
  end
  def edit
  end
  def update
  end
  def destroy
  end
  def listing_params
    params.require(:listing).permit(:name, :description)
  end
end
