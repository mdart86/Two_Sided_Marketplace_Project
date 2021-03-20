class UserProfile < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true, length: { maximum: 25, too_long: "%{count} is the maximum number of characters, please check for spaces, try again or contact the administrator" } 
  validates :last_name, presence: true, length: { maximum: 25, too_long: "%{count} is the maximum number of characters, please check for spaces, try again or contact the administrator" } 
  validates :age, presence: true, numericality: {greater_than_or_equal_to: 18, less_than_or_equal_to: 99, only_integer: true }
  validates :contact_number, presence: true, length: { maximum: 15, too_long: "%{count} is the maximum number of characters, please check for spaces, try again or contact the administrator" }

  has_one :address
  accepts_nested_attributes_for :address, allow_destroy: true


  before_save :remove_whitespace
  
  private
  def remove_whitespace
    self.first_name = self.first_name.strip
    self.last_name = self.last_name.strip
    self.contact_number = self.contact_number.strip
  end
end