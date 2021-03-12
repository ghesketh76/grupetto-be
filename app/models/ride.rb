class Ride < ApplicationRecord
    belongs_to :user
    has_many :joinrides
end
