# == Schema Information
#
# Table name: notes
#
#  id         :bigint           not null, primary key
#  body       :text
#  user_id    :bigint           not null
#  task_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Note  
  include Mongoid::Document
  include Mongoid::Timestamps

  field :body, type: String

  belongs_to :user
  belongs_to :task

  validates :body, presence: true
end
