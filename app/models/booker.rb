class Booker < ApplicationRecord
    belongs_to :author, foreign_key: 'authors_id'
    belongs_to :reader, foreign_key: 'readers_id'
end
