class Appy < ApplicationRecord
    enum :status, [:shipped, :complete, :cancelled]
end
