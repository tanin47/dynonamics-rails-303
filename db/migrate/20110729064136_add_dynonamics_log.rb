class AddDynonamicsLog < ActiveRecord::Migration
  def self.up
    
    create_table "dynonamics_logs", :force => true do |t|
      t.decimal :start_time, :precision => 17, :scale => 6,:default=>0
      t.decimal :duration, :precision => 17, :scale => 6,:default=>0
      t.text :response,:default=>""
    end
    
  end

  def self.down
    drop_table "dynonamics_logs"
  end
end
