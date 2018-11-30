class RemoveStartFromBusinessHours < ActiveRecord::Migration[5.2]
  def change
    remove_column :business_hours, :start
  end
end
