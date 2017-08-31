class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.integer :arpu

      t.timestamps
    end
  end
end
