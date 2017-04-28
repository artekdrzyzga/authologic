class AddTypToAd < ActiveRecord::Migration
  def change
    add_column :ads, :typ, :string
  end
end
