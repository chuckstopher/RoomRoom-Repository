class AddBudgetToUsers < ActiveRecord::Migration
  def change
    add_column :users, :budget, :decimal
  end
end
