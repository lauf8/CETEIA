json.extract! emprestimo, :id, :data_emprestimo, :data_devolucao, :status, :responsavel_id, :created_at, :updated_at
json.url emprestimo_url(emprestimo, format: :json)
