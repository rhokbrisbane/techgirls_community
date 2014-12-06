require 'rails_helper'

describe Story, type: :model do
  it { is_expected.to validate_presence_of(:body) }

  it { is_expected.to belongs_to(:user) }
end
