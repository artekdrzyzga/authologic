class AdminTransactionsElementsController < ApplicationController
  def index
    if params[:admin_transaction_id].present?
      @tranelems = Tranelem.where(tranhead_id: params[:admin_transaction_id])
    else  
      @tranelems = Tranelem.all
    end  



  	
  end
end
