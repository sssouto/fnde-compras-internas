# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
Item.destroy_all

filepath = Rails.root.join('lib', 'datasets', 'itensPAC2020.json')

serialized2020 = File.read(filepath)

data2020 = JSON.parse(serialized2020)

items2020 = data2020.map do |item|
  Item.create!(
    item['numero_item'],
    item['ano_plano'],
    item['codigo_item'],
    item['descricao_sucinta_objeto'],
    item['grupo_despesa'],
    item['nome_grupo'],
    item['grau_prioridade'],
    item['renovacao_contrato'],
    item['acao_orcamentaria'],
    item['quantidade_estimava'],
    item['unidade_fornecimento'],
    item['valor_unitario_estimado'],
    item['valor_total_estimado'],
    item['unidade_responsavel'],
    item['data_desejada_contratacao']
  )
end
