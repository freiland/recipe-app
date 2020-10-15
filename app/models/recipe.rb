class Recipe < ApplicationRecord
  # scope :rating, -> { where('rating > 6') }
  scope :rating, -> { order(rating: :desc).limit(10) }

  scope :has_with, -> (name_parameter) { where("name like ?", "%#{name_parameter}%") }
  
  has_and_belongs_to_many(:ingredients)

  validates :name, presence: true
  validates_length_of :name, maximum: 50
  # validates :search_term, presence: true
  #def self.rating_over 
    #where('rating > 6')
  #end 
end
