class CreateListyLists < ActiveRecord::Migration
  def change
    create_table :llists do |t|
      t.string :name

      t.timestamps
    end
  end
end
