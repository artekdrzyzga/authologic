class AddItemCountToTranelements < ActiveRecord::Migration
  def change
    add_column :tranelems, :item_count, :integer, :default => 0
  end
end
