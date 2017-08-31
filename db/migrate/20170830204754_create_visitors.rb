class CreateVisitors < ActiveRecord::Migration[5.0]
  def change
    create_table :visitors do |t|
      t.integer :medium, default: 0
      t.references :activity

      t.timestamps
    end
  end
end
