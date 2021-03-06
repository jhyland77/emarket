class Post < ActiveRecord::Base


  attr_accessible :contact, :description, :name, :price, :itemtype, :image, :status


  has_attached_file :image, :styles => {
  										:thumb => "300x300#"
  }


  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :name, :contact, :price, :itemtype, :status, :presence => true

  belongs_to :user, inverse_of: :posts

def self.search(search)
  if search
    where('name LIKE ? OR description LIKE ? OR itemtype LIKE ? OR status LIKE ? OR contact LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  else
    scoped
  end
end




end
