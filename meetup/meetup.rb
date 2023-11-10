require 'date'

class Meetup
  attr_reader :month, :year

  SCHEDULE_MAPPING = {
    first: 0,
    second: 7,
    third: 14,
    fourth: 21
  }.freeze

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, schedule)
    first_day = Date.new(year, month, 1)
    first_weekday = first_day.wday
    days_to_target_weekday = (Date::DAYNAMES.index(weekday.to_s.capitalize) - first_weekday + 7) % 7
    target_day = first_day + days_to_target_weekday
    count_schedule(schedule, target_day, weekday)
  end

  def count_schedule(schedule, target_day, weekday)
    case schedule
    when :teenth
      teenth_day = Date.new(year, month, 13)
      target_day + (target_day + 7 < teenth_day ? 14 : 7)
    when :last
      last_day = Date.new(year, month, -1)
      days_to_last_weekday = (last_day.wday - Date::DAYNAMES.index(weekday.to_s.capitalize) + 7) % 7
      last_day - days_to_last_weekday
    else
      target_day + SCHEDULE_MAPPING[schedule]
    end
  end
end
