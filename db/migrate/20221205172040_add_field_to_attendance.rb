class AddFieldToAttendance < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :attending, :string
  end
end
