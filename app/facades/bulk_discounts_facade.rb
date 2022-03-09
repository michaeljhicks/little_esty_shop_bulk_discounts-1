class BulkDiscountsFacade
  def self.merchant(id) #maybe remove?
    Merchant.find(id)
  end

  def self.holiday_info
    search = HolidaySearch.new
    search.three_upcoming_us_holidays
  end
end
