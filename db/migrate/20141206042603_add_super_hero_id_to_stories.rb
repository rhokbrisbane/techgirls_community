class AddSuperHeroIdToStories < ActiveRecord::Migration
  def change
    add_column :stories, :super_hero_id, :integer
  end
end
