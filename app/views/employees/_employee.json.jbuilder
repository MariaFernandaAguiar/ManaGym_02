json.extract! employee, :id, :nome_funcionario, :rg_funcionario, :email_funcionario, :data_inicio, :salario_funcionario, :gym_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
