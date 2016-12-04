class CreateUsersearches < ActiveRecord::Migration
  def change
    create_table :usersearches do |t|
      t.string :keywords
      t.boolean :pets
      t.decimal :budget

      t.timestamps null: false
    end
  end
end
