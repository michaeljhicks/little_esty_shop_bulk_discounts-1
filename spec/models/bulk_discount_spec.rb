require 'rails_helper'

RSpec.describe BulkDiscount, type: :model do
  it { should belong_to(:merchant) }

  describe 'validations' do
    it { should validate_presence_of(:markdown) }
    it { should validate_presence_of(:threshold) }
  end

  describe 'relationships' do
    it { should belong_to(:merchant) }
  end
end
