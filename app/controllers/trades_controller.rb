class TradesController < ApplicationController

  def show

  end

  def new
    @trade_codes = TradeCode.all_trade_relavent_codes
  end

  def create
    @trade_codes = []
    morally_ambiguous = false
    morally_ambiguous = params[:morally_ambiguous] if params[:morally_ambiguous]
    @trade_codes = params[:trade_codes] if params[:trade_codes]
    @supplier = Supplier.new(morally_ambiguous, @trade_codes.join(' ').titleize)
    render :show
  end
end
