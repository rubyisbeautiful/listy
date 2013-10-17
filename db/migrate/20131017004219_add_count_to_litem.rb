class AddCountToLitem < ActiveRecord::Migration
  def change
    add_column :litems, :count, :integer
  end
end
