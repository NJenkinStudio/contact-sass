class Contact < ApplicationRecord
  has_many :addresses
  accepts_nested_attributes_for :addresses, allow_destroy: true
  belongs_to :user

  def full_name
    return "#{first_name} #{last_name}" if last_name || first_name
    
  end

  def address
    
  end
end
