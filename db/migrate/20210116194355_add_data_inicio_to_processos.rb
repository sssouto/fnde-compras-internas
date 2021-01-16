class AddDataInicioToProcessos < ActiveRecord::Migration[6.0]
  def change
    add_column :processos, :data_inicio, :date
  end
end
