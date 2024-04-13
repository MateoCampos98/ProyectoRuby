# == Schema Information
#
# Table name: participants
#
#  id         :bigint           not null, primary key
#  role       :integer
#  user_id    :bigint           not null
#  task_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Participant 
  include Mongoid::Document
  include Mongoid::Timestamps

  ROLES = {
    responsible: 1,
    follower: 2
  }

  field :role, type: Integer

  belongs_to :user
  belongs_to :task

  def self.roles
    ROLES
  end

end
