class AddModeToLlist < ActiveRecord::Migration
  def change
    add_column :llists, :mode, :string
  end
end
