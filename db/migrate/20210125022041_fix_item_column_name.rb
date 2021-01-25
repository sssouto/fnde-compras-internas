class FixItemColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :item_numero, :numero_item
    rename_column :items, :numero_catalogo, :codigo_item
    rename_column :items, :descricao_sucinta, :descricao_sucinta_objeto
    rename_column :items, :prioridade, :grau_prioridade
    rename_column :items, :renovacao, :renovacao_contrato
    rename_column :items, :quantidade_prevista, :quantidade_estimava
    rename_column :items, :unidade_medida, :unidade_fornecimento
    rename_column :items, :valor_unit_previsto, :valor_unitario_estimado
    rename_column :items, :valor_total_previsto, :valor_total_estimado
    rename_column :items, :data_prevista, :data_desejada_contratacao
  end
end
