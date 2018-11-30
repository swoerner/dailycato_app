class AddClosedTimeToBusinessHours < ActiveRecord::Migration[5.2]
  def change
    add_column :business_hours, :closed_time, :string
  end
end
