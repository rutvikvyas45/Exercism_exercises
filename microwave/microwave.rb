# frozen_string_literal: true

class Microwave
  def initialize(timer)
    @timer = timer
  end

  def timer
    format_time(minutes_count, seconds_count)
  end

  def minutes_count
    if @timer < 60
      minutes = 0
    elsif @timer > 59 && @timer < 100
      minutes = 1
    elsif @timer % 100 > 59
      minutes = @timer / 100 + 1
    else
      minutes = @timer.to_i / 100
    end
    minutes
  end

  def seconds_count
    if @timer < 60
      seconds = @timer
    elsif @timer > 59 && @timer < 100
      seconds = @timer - 60
    elsif @timer % 100 > 60
      seconds = @timer.to_i % 100 - 60
    else
      seconds = @timer.to_i % 100
    end
    seconds
  end

  private

  def format_time(minutes, seconds)
    "#{format_number(minutes)}:#{format_number(seconds)}"
  end

  def format_number(number)
    format('%02d', number)
  end
end

puts Microwave.new(272).timer
