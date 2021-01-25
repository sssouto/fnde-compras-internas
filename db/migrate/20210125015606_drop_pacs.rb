class DropPacs < ActiveRecord::Migration[6.0]
  def change
    drop_table :pacs
  end
end
