class AddEndToBusinessHours < ActiveRecord::Migration[5.2]
  def change
    add_column :business_hours, :end, :string
  end
end
