class AuctionsController < ApplicationController
  def new
      @auction = Auction.new
  end

  def show
    @auction = Auction.find(params[:id])
  end

  def create
    @auction = Auction.new(auction_params)
     
    a = @auction
 
    if a.save
      redirect_to a
    else
      render 'new'
    end
  end
 
  def edit
    @auction = Auction.find(params[:id])
  end
  
  def update
    @auction = Auction.find(params[:id])
 
    if @auction.update(auction_params)
      redirect_to @auction
    else
      render 'edit'
    end
  end
  
  def index
  end
  
  private
    def auction_params
      params.require(:auction).permit(:item, :desc, :bid)
    end
end


