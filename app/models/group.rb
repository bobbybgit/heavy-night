class Group < ApplicationRecord

    require 'carrierwave/processing/rmagick'
    require 'carrierwave/processing/mini_magick'
    
    validates :name, presence: true
    validates :name, length: { maximum: 50 }
    validates :location, presence: true
    validates :location, length: {maximum: 500 }

    mount_uploader :image, ImageUploader
    
end
