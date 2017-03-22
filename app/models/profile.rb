class Profile < ActiveRecord::Base
  # Assications in Active Record can be found on the rails guide for 
  # Active Record Associations
  belongs_to :user
  has_attached_file :avatar,
    :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end