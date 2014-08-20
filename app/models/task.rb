class Task
  include Mongoid::Document
  field :title, type: String
  field :from, type: String
  field :to, type: String
  field :content, type: String
  field :deadline, type: String
  field :reminder, type: String
  field :status, type: String
  
  embeds_many :comments
end
