class One < ApplicationRecord
    has_many :twos, inverse_of: 'one'
end
