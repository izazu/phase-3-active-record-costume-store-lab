# Create your CostumeStore class here

class CostumeStore < ActiveRecord::Base
    validates :name, presence: true
    validates :location, presence: true
    validates :costume_inventory, numericality: { greater_than_or_equal_to: 0 }
    validates :num_of_employees, numericality: { greater_than_or_equal_to: 0 }
    validates :is_in_business, inclusion: { in: [true, false] }
  end
  