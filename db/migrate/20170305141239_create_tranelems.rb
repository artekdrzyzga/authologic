class CreateTranelems < ActiveRecord::Migration
  def change
    create_table :tranelems do |t|
      t.integer :tranhead_id
      t.integer :ad_id

      t.timestamps null: false
    end
  end
end
