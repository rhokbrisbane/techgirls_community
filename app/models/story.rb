class Story < ActiveRecord::Base
  validates :body, presence: true
end
