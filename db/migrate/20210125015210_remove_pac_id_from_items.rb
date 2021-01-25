class RemovePacIdFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :pac_id, :bigint
  end
end
