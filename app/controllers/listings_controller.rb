class ListingsController < ApplicationController
before_action :find_listing, only: [:show, :edit, :update, :destroy]

  def index
    if params[:use]
      @listings = Listing.where(use: params[:use])
      else
     @listings = Listing.all
  end
  end
    def show

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

        if @listing.update(listing_params)
          redirect_to listings_path
          else
          render :edit
        end
      end

  def destroy

    @listing.destroy
redirect_to listings_path
  end

private

  def listing_params
    params.require(:listing).permit(:name, :description, :use)
  end

  def find_listing
  @listing = Listing.find(params[:id])
  end
end
