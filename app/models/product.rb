class Product < ApplicationRecord
    has_one_attached :photo
    
    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true

    belongs_to :category
end
