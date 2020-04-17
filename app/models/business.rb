class Business < ApplicationRecord

    has_many :ad_sets
    
    has_one_attached :image
    has_one_attached :featureAd
end
