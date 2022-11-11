json.extract! equipamento, :id, :identificador, :tipo, :descricao, :condicao, :status, :created_at, :updated_at
json.url equipamento_url(equipamento, format: :json)
