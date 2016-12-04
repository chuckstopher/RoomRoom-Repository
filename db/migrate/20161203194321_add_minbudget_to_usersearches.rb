class AddMinbudgetToUsersearches < ActiveRecord::Migration
  def change
    add_column :usersearches, :minbudget, :decimal
    add_column :usersearches, :maxbudget, :decimal
  end
end
