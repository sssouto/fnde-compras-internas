class AddAnoPlanoToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :ano_plano, :integer
  end
end
