class BidsController < ApplicationController


  def create
    @bid = Bid.new(bid_params)
  end

    if @bid.save
      redirect_to bids_path, notice: 'Your bid has been recorded!'
    else
      @item = @bid.item
      render "items/show"
    end
  end
  def index

  end

  private
    # Only allow a trusted parameter "white list" through.
    def bid_params
      params.require(:bid).permit(:amount, :item_id)
    end
end
