class Usersearch < ActiveRecord::Base
    
    
    def search_users
    
        users = User.all
        users = users.where(["user_name LIKE ?", "%#{keywords}%"]) if keywords.present?
        user = users.where(["user_budget >= ?", minbudget]) if minbudget.present?
        user = users.where(["user_budget <= ?", maxbudget]) if maxbudget.present?
    
        return users
    end
    
end
