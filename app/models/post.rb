class Post < ActiveRecord::Base
    belongs_to :user
    
    has_attached_file :image, :style => { :medium => "300x300>"}
     validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
     
     
end