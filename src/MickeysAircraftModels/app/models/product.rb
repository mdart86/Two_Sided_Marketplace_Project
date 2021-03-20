class Product < ApplicationRecord
  belongs_to :user

  has_one_attached :picture
  validates :name, length: { maximum: 30, too_long: "%{count} is the maximum number of characters, please check for spaces, try again or contact the administrator" } 
  validates :description, length: { maximum: 150, too_long: "%{count} is the maximum number of characters, please check for spaces, try again or contact the administrator" } 
  validates :price, numericality: { minimum: 1, maximum: 500}
  validates :aircraft_model, length: { maximum: 30, too_long: "%{count} is the maximum number of characters, please check for spaces, try again or contact the administrator" } 

  before_save :remove_whitespace

  private
  def remove_whitespace
    self.name = self.name.strip
    self.description = self.description.strip
    self.aircraft_model = self.aircraft_model.strip
  end
end