require 'rails_helper'

RSpec.describe HolidayFacade do
  it "returns an array of holidays" do
    response = HolidayFacade.country_holidays("US")
    expect(response).to be_a(Array)
    expect(response.sample).to be_a(Holiday)
    expect(response.count).to eq(3)
  end
end
