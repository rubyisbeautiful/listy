class AddTextToLitem < ActiveRecord::Migration

  def change
    add_column :litems, :text, :text
  end
end
