class AddStartToBusinessHours < ActiveRecord::Migration[5.2]
  def change
    add_column :business_hours, :start, :string
  end
end
