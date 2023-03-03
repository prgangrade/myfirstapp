class Firstapp < ApplicationRecord
    has_many :secondapps, inverse_of: :firstapp
     accepts_nested_attributes_for :secondapps
    
    validates :name, presence: true
end
