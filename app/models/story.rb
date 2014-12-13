class Story < ActiveRecord::Base
  validates :body, presence: true

  belongs_to :super_hero
  accepts_nested_attributes_for :super_hero

  after_create :create_map_point

  private

  def create_map_point
    MapAdapter.create_point(super_hero.postcode)
  end
end
