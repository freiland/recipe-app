class Recipe < ApplicationRecord
  scope :rating, -> { where('rating > 6') }

  scope :has_with, -> (name_parameter) { where("name like ?", "%#{name_parameter}%") }
  
  has_and_belongs_to_many(:ingredients)

  #def self.rating_over 
    #where('rating > 6')
  #end 
end
