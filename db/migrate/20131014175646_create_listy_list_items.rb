class CreateListyListItems < ActiveRecord::Migration
  def change
    create_table :litems do |t|
      t.string :name
      t.integer :weight
      t.references :llist, index: true

      t.timestamps
    end
  end
end
