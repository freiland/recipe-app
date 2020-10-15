require 'rails_helper'

describe Recipe do
  it { should have_and_belong_to_many :ingredients }

  it { should validate_presence_of :name }

  it { should validate_length_of(:name).is_at_most(50)}

  # it { should validate_presence_of :search_term }
end