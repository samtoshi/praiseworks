class Comment
  include Mongoid::Document
  field :task_id, type: String
  field :from, type: String
  field :content, type: String
  
  embedded_in :task, :inverse_of => :comments
end
