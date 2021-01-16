class Processo < ApplicationRecord
  has_many :itens
  DEMANDANTE = ["CGLOG/DIRAD", "CGPEO/DIRAD", "CGCOM/DIRAD", "CGGOV/DIRTI", "CGINF/DIRTI", "CGDES/DIRTI", "CGPLI/DIRAE", "CGPAE/DIRAE", "CGIMP/DIGAP", "CGEOF/DIFIN", "CGFIN/DIGEF", "ASSEC/PRESI", "OUVID/PRESI", "AGEST/PRESI", "GABIN/PRESI"]
  TIPO = ["Pregão", "Dispensa de licitação", "Inexigibilidade", "Adesão ARP"]
  FASE = ["Tramitação inicial", "ETP/Mapa de riscos", "TR/PB", "Instrução pré-PROFE", "PROFE", "Instrução pós-PROFE", "Fase externa - SIASG / Comprasnet", "Autoridade competente / empenho", "Contrato em execução", "Processo encerrado"]
end
