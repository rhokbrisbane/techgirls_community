require 'rails_helper'

describe Story, type: :model do
  it { is_expected.to validate_presence_of(:body) }

  it { is_expected.to belong_to(:super_hero) }
  it { is_expected.to accept_nested_attributes_for(:super_hero) }
end
