class AddArchetypeToSuperHeros < ActiveRecord::Migration
  def change
    add_column :super_heros, :archetype, :string
  end
end
