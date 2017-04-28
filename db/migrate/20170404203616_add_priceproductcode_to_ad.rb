class AddPriceproductcodeToAd < ActiveRecord::Migration
  def change
  	add_column :ads, :price, :string
  	add_column :ads, :productcode, :integer 	
  end
end
