class AdSet < ApplicationRecord

    belongs_to :business

    has_one_attached :small
    has_one_attached :medium
    has_one_attached :large
end
