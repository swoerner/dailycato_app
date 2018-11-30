class RemoveClosedTimeFromBusinessHours < ActiveRecord::Migration[5.2]
  def change
    remove_column :business_hours, :closed_time
  end
end
