class CreateCarriages < ActiveRecord::Migration
  def change
    create_table :carriages do |t|
      t.integer :train_id
      t.string  :category
      t.integer :upper
      t.integer :lower

      t.timestamps null: false
    end
  end
end
