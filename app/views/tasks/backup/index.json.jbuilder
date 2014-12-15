json.array!(@tasks) do |task|
  json.extract! task, :id, :completed, :comment, :attachment
  json.url task_url(task, format: :json)
end
