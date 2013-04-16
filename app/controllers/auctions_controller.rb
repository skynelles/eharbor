class AuctionsController < ApplicationController

  def index
    @auctions = Auction.all
  end

  def show
    @auction = Auction.find(params[:id])
  end

  def new
    @auction = Auction.new
  end

  def create
    @auction = Auction.new(params[:auction])
    @auction.save
    redirect_to @auction
  end
  
end
