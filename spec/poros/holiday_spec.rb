require 'rails_helper'

RSpec.describe Holiday do
  it "has attributes" do
    holidays = HolidayFacade.country_holidays("US")
    holidays.each do |holiday|
      expect(holiday.name).to be_a(String)
      expect(holiday.date).to be_a(String)
    end

  end
end
