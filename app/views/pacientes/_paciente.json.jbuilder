json.extract! paciente, :id, :foto, :nome_animal, :nome_dono, :cpf_cnpj_dono, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
