class ChangeProcessoIdOnItems < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :processo_id, :bigint, null: true
  end
end
