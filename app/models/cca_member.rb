class CcaMember < ApplicationRecord
    belongs_to :cca
    belongs_to :members, class_name: "User", foreign_key: "members_id"
  end