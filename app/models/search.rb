class Search < ActiveRecord::Base
    
    def search_posts
        
        posts = Post.all
        posts = posts.where(["address LIKE ?", address]) if address.present?
        posts = posts.where(["price >= ?", min_price]) if min_price.present?
        posts = posts.where(["price <= ?", max_price]) if max_price.present?
    
        return posts
    end
    
  
    
end
