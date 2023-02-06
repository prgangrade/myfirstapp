class Second < ApplicationRecord
    validates :name, presence: true, length: {maximum: 2}
    validates_with Valid
    validates :password, length: {in: 1..5}
    validates :size, exclusion: {in: %w(10 20 30),message: "%{value} is not valid size"}
    validates :newsize, inclusion: {in: %w(L M N)},allow_nil: true
    validates :city, absence: true,if: :shahar?
    validates :uniid, uniqueness: true
    def shahar?
        city=='indore'
    end
end
