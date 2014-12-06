class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.references :user, index: true
      t.text :body

      t.timestamps
    end
  end
end
