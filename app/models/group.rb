class Group < ApplicationRecord
    
    validates :name, presence: true
    validates :name, length: { maximum: 50 }
    validates :location, presence: true
    validates :location, length: {maximum: 500 }
    
end
