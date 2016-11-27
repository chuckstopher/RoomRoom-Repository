class Post < ActiveRecord::Base
    belongs_to :user
    
  has_attached_file :image, style: { thumb: '120x120', large: '300x400' }, 
                    :url  => "/assets/images/rooms/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/images/rooms/:id/:style/:basename.:extension"
validates_attachment_presence :image
validates_attachment_size :image, :less_than => 5.megabytes
validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
 
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
