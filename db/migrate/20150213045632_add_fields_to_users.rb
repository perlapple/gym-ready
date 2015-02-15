class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :height_in_cm, :integer
    add_column :users, :date_of_birth, :date
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
