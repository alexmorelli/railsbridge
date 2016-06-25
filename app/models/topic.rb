class Topic < ActiveRecord::Base
  has_many :votes, dependent: :destroy
def self.sorted
  Topic.all.sort {|a, b| b.votes.count <=> a.votes.count}
  end
end

