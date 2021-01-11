class CreateProcessos < ActiveRecord::Migration[6.0]
  def change
    create_table :processos do |t|
      t.string :sei
      t.string :objeto
      t.string :demandante
      t.string :tipo_contratacao
      t.string :fase

      t.timestamps
    end
  end
end
