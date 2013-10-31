class AddModeToLlist < ActiveRecord::Migration
  def change
    add_column :llists, :mode, :string, default: 'order'
  end
end
