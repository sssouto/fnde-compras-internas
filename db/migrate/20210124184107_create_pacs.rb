class CreatePacs < ActiveRecord::Migration[6.0]
  def change
    create_table :pacs do |t|
      t.integer :ano

      t.timestamps
    end
  end
end
