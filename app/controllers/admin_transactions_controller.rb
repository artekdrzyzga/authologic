class AdminTransactionsController < ApplicationController
  def index
  	@tranheads = Tranhead.all
  end


  def sent
  	@tranhead = Tranhead.find(params[:id])
    respond_to do |format|

			if @tranhead.present? && @tranhead.update_attributes(:status => Tranhead::STATUSES[3])
	      format.html { redirect_to admin_transactions_path }
	       flash[:success] = "Transaction was moved to status sent"
	  	else
	      format.html { redirect_to admin_transactions_path, error: "Transaction can't be moved to ready." }
	  	end
	  end
  end


end
