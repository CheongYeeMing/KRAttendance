class Event < ApplicationRecord
    belongs_to :cca
    has_many :users
end
