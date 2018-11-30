class AddOpenTimeToBusinessHours < ActiveRecord::Migration[5.2]
  def change
    add_column :business_hours, :open_time, :string
  end
end
