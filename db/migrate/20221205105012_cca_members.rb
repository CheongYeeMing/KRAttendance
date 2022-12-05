class CcaMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :cca_members do |t|
      t.belongs_to :cca
      t.references :members, foreign_key: {to_table: :users}, limit: 8
      t.timestamps
    end
  end
end