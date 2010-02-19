class AddForeignToDoTodayItems < ActiveRecord::Migration
  def self.up
    add_column :do_today_items, :activity_id, :integer
  end

  def self.down
    remove_column :do_today_items, :activity_id
  end
end
