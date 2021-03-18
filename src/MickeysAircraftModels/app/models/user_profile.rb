class UserProfile < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true, length: { maximum: 25, too_long: "%{count} is the maximum number of characters, please check for spaces, try again or contact the administrator" } 
  validates :last_name, presence: true, length: { maximum: 25, too_long: "%{count} is the maximum number of characters, please check for spaces, try again or contact the administrator" } 
  validates :age, presence: true, numericality: {greater_than_or_equal_to: 18, less_than_or_equal_to: 99, only_integer: true }
  validates :contact_number, presence: true, length: { maximum: 15, too_long: "%{count} is the maximum number of characters, please check for spaces, try again or contact the administrator" }

  has_one :address
  accepts_nested_attributes_for :address, allow_destroy: true
end


