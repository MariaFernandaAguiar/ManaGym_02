json.extract! student, :id, :nome_aluno, :rg_aluno, :email_aluno, :data_matricula, :gym_id, :created_at, :updated_at
json.url student_url(student, format: :json)
