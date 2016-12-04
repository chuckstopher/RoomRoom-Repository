class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :address
      t.decimal :min_price
      t.decimal :max_price

      t.timestamps null: false
    end
  end
end
