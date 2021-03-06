class SuperHero < ActiveRecord::Base
  validates :name, :super_power, :postcode,
            :age, :year_at_school, :email, presence: true

  validates :name, :email, uniqueness: true

  has_one :story
 
  def archetype_data
    @data ||= Archetype.with_key(key: archetype.to_sym)
    @data
  end
end
