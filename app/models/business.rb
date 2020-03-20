class Business < ApplicationRecord
    has_one_attached :image
    has_one_attached :featureAd
end
