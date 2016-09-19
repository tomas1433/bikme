class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :find_listing, only: [:show, :edit, :update, :destroy]


def seller
  @listings = Listing.where(user: current_user).order("created_at DESC")
end

  def index
    if params[:use]
      @listings = Listing.where(use: params[:use])
      else
     @listings = Listing.all.order("created_at DESC")
  end
  end
    def show

    end

    def new
     @listing = Listing.new
    end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    if @listing.save
    redirect_to listings_path
      else
      render :new
    end
  end

  def edit

  end

      def update
if @listing.user == current_user
        @listing.update(listing_params)
          redirect_to seller_path
          else
           flash[:alert] = "Action impossible, ce n'est pas votre vélo"
          render :edit
        end
      end

  def destroy
if @listing.user == current_user
    @listing.destroy
redirect_to listings_path
    else
  flash[:alert] = "Action impossible, ce n'est as votre vélo!"
    render :index
  end
  end
private

  def listing_params
    params.require(:listing).permit(:name, :description, :use, :photo, :price)
  end

  def find_listing
  @listing = Listing.find(params[:id])
  end
end
