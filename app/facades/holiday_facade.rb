class HolidayFacade
  class << self
    def country_holidays(country)
      holidays = HolidayService.holidays(country)
      holidays.map do |holiday|
        Holiday.new(holiday)
      end
    end
  end
end
