class Cca < ApplicationRecord
    has_many :events, dependent: :destroy
    has_many :cca_members
    has_many :members, through: :cca_members
    has_many :cca_leaders
    has_many :leaders, through: :cca_leaders

    has_many :events, dependent: :destroy

    validates :name, presence: true
    validates :description, presence: true

    has_many_attached :avatars
end
