class DayRange

  def self.build
    build_hour_ranges
    new @hour_ranges, 1, 9999
  end

  def self.build_hour_ranges
    @hour_ranges = [ HourRange.new ]
  end

  attr_reader :start, :finish, :hour_ranges

  def initialize hour_ranges, start = 1, finish = 9999
    @hour_ranges = hour_ranges
    @start = start
    @finish = finish 
  end
end