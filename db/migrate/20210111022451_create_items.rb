class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :item_numero
      t.integer :item_pac
      t.string :numero_catalogo
      t.string :descricao_sucinta
      t.string :grupo_despesa
      t.string :nome_grupo
      t.string :prioridade
      t.string :renovacao
      t.string :acao_orcamentaria
      t.float :quantidade_prevista
      t.float :quantidade_contratada
      t.string :unidade_medida
      t.float :valor_unit_previsto
      t.float :valor_unit_contratado
      t.float :valor_total_previsto
      t.float :valor_total_contratado
      t.string :unidade_responsavel
      t.date :data_prevista
      t.date :data_contratada
      t.string :situacao
      t.references :processo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
