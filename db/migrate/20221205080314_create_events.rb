class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.belongs_to :cca, foreign_key: true
      t.string :name
      t.string :location
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
