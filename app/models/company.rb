class Company < ApplicationRecord
    has_many :team_members, class_name: "Company", foreign_key: 'manager_id'
    belongs_to :manager, class_name: "Company", optional: true, foreign_key: 'manager_id'
end
