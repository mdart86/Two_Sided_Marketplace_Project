class Address < ApplicationRecord
  belongs_to :user_profile

  before_save :remove_whitespace

  private
  def remove_whitespace
    self.street_number = self.street_number.strip
    self.street_name = self.street_name.strip
    self.suburb = self.suburb.strip
    self.state = self.state.strip
    self.postcode = self.postcode.strip
  end
end
