class Member
  include Mongoid::Document
  field :userid, type: String
  field :pass, type: String
  field :name, type: String
  field :mail, type: String
  field :memo, type: String
  field :admin, type: String
end
