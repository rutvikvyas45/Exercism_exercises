require 'date'

class Meetup
  day{
    "sunday" => 1,
    "monday" => 2,
    "tuesday" => 3,
    "wednesday" => 4,
    "thursday" => 5,
    "friday" => 6,
    "saturday" => 7 
    }

  descriptors{
    "first" => 1,
    "second" => 8,
    "third" => 15,
    "fourth" => 22,
    "last" => 30,
    "teenth" => 
    }

  def initialize(month,year)
    @month = month
    @year = year
  end         
end