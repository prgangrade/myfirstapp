class Author < ApplicationRecord
    has_many :bookers, foreign_key: 'authors_id'
    has_many :readers, through: :bookers
end
