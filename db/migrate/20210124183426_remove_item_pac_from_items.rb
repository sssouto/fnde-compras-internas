class RemoveItemPacFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :item_pac, :integer
  end
end
