class CreateTranheads < ActiveRecord::Migration
  def change
    create_table :tranheads do |t|
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
