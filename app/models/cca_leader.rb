class CcaLeader < ApplicationRecord
    belongs_to :cca
    belongs_to :leaders, class_name: "User", foreign_key: "leaders_id"
  end