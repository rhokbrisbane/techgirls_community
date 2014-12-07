ActiveAdmin.register Story do
  permit_params do
    [:body, :name, :super_power, :postcode, :age, :year_at_school, :email, :phone, :archetype]
  end
end
