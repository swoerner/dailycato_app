class RemoveOpenTimeFromBusinessHours < ActiveRecord::Migration[5.2]
  def change
    remove_column :business_hours, :open_time
  end
end
