require './app/poros/holiday_service'

class HolidaySearch

  def usa_holiday_info
    service.united_states.map do |holiday|
      Holiday.new(holiday)
    end
  end

  def three_upcoming_us_holidays
    usa_holiday_info.first(3)
  end

  def service
    HolidayService.new
  end
end
