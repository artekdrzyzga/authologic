class AddKolumnStatusToTranheads < ActiveRecord::Migration
  def change
    add_column :tranheads, :status, :string
  end
end
