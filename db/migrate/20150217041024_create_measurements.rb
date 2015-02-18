class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.float :weight
      t.float :body_fat_percentage
      t.date :date
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :measurements, :users
  end
end
