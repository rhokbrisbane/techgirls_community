class RemoveUserIdColumnFromStories < ActiveRecord::Migration
  def change
    remove_column :stories, :user_id, :integer
  end
end
