json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :name, :description, :muscle_group_id
  json.url exercise_url(exercise, format: :json)
end
