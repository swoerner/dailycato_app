class RemoveEndFromBusinessHours < ActiveRecord::Migration[5.2]
  def change
    remove_column :business_hours, :end
  end
end
