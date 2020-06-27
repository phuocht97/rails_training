class DropTableMicropost < ActiveRecord::Migration
  def change
    drop_table 'm_icroposts'
  end
end
