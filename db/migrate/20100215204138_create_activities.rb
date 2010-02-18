class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.string :margin
      t.string :description
      t.decimal :estimate
      t.decimal :actual
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :activities
  end
end
