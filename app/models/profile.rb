class Profile < ActiveRecord::Base
  # Assications in Active Record can be found on the rails guide for 
  # Active Record Associations
  belongs_to :user
end