require 'rails_helper'

RSpec.describe BulkDiscount, type: :model do
  it { should belong_to(:merchant) }

  describe 'validations' do
    it { should validate_presence_of(:markdown) }
    it { should validate_presence_of(:threshold) }
    it { should validate_numericality_of(:threshold) }
    it { should_not allow_value(0).for(:markdown) }
    it { should_not allow_value(101).for(:markdown) }
    it { should_not allow_value(-1).for(:threshold) }
  end

  describe 'relationships' do
    it { should belong_to(:merchant) }
  end
end
