class AddPositionToLitem < ActiveRecord::Migration
  def change
    add_column :litems, :position, :integer
  end
end
