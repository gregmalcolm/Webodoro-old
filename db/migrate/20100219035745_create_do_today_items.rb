class CreateDoTodayItems < ActiveRecord::Migration
  def self.up
    create_table :do_today_items do |t|
      t.integer :pomodoros
      t.integer :internal_interuptions
      t.integer :external_interuptions

      t.timestamps
    end
  end

  def self.down
    drop_table :do_today_items
  end
end
