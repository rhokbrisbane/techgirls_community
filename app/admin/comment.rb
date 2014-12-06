ActiveAdmin.register Comment do
  menu parent: 'Stories'

  permit_params do
    [:story_id, :body]
  end
end
