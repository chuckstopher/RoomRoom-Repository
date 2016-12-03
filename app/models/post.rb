class Post < ActiveRecord::Base
    belongs_to :user
    
    has_attached_file :image, :size =>'150x150'
    validates_attachment_presence :image 
    validates_attachment_size :image, :less_than => 5.megabytes
    validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
