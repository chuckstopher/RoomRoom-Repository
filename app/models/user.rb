class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  
   has_attached_file :image, :style => { :thumb => "100x100>"}
     validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
     
 acts_as_messageable
    
    def mailboxer_email(object)
      nil
    end
    
end
