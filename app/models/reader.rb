class Reader < ApplicationRecord
    has_many :bookers
    has_many :authors, through: :bookers
end
