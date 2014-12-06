class CreateSuperHeros < ActiveRecord::Migration
  def change
    create_table :super_heros do |t|
      t.string :name
      t.string :super_power
      t.string :postcode
      t.integer :age
      t.string :year_at_school
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
