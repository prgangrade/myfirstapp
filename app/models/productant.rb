class Productant < ApplicationRecord
    has_many :pictures, as: :image
end
