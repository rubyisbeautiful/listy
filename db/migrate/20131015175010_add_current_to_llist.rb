class AddCurrentToLlist < ActiveRecord::Migration
  def change
    add_column :llists, :current_litem_id, :integer
  end
end
