require 'rails_helper'

RSpec.describe HolidayFacade do
  it "returns an array of holidays" do
    response = HolidayFacade.country_holidays("US")
    binding.pry

  end
end
