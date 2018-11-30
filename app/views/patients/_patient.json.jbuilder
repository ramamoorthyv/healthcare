json.extract! patient, :id, :name, :dob, :number, :description, :created_at, :updated_at
json.url patient_url(patient, format: :json)
