class Attendance < ApplicationRecord
    belongs_to :event
    has_one :user
end
