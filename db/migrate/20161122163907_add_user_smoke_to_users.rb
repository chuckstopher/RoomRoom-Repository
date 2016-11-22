class AddUserSmokeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_smoke, :string
    add_column :users, :user_pets, :string
    add_column :users, :user_weekday_routine, :string
    add_column :users, :user_weekend_routine, :string
    add_column :users, :user_cleanliness, :string
  end
end
