class CreateDoners < ActiveRecord::Migration
  def change
    create_table :doners do |t|
      t.string :name
      t.string :address
      t.integer :age
      t.string :blood_group
      t.float :weight

      t.timestamps null: false
    end
  end
end
