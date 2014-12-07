class Story < ActiveRecord::Base
  validates :body, presence: true

  belongs_to :super_hero
  accepts_nested_attributes_for :super_hero
end
