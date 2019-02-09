json.extract! task_item, :id, :title, :body, :created_at, :updated_at
json.url task_item_url(task_item, format: :json)
