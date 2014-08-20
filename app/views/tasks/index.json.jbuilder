json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :from, :to, :content, :deadline, :reminder, :status
  json.url task_url(task, format: :json)
end
