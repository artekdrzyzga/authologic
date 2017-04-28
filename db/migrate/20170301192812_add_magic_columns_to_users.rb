class AddMagicColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :company, :string
    add_column :users, :city, :string
    add_column :users, :street, :string
    add_column :users, :postcode, :string
    add_column :users, :phonenumber, :string
    add_column :users, :last_login_at, :datetime
    add_column :users, :last_login_ip, :string
  end
end
