class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.string :name
      t.text :description
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :routines, :users
  end
end
