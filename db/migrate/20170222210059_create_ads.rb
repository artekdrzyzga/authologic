class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :name
      t.decimal :size
      t.string :colour
      t.text :description
      t.string :base
      t.decimal :dryingtime
      t.decimal :coverage

      t.timestamps null: false
    end
  end
end
