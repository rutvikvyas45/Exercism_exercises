class Microwave
  def initialize(timer)
    @timer = timer
  end

  def timer
    format_time(minutes_timer, seconds_timer)
  end

  def minutes_timer
    if @timer < 60
      0
    elsif @timer > 59 && @timer < 100
      1
    elsif @timer > 99 && @timer < 110
      @timer.to_i / 100
    else
      @timer.to_i / 100
    end
  end

  def seconds_timer
    if @timer < 60
      @timer
    elsif @timer > 59 && @timer < 100
      @timer - 60
    elsif @timer > 99 && @timer < 110
      @timer.to_i - 100
    else
      @timer.to_i % 100
    end
  end

  private

  def format_time(minutes, seconds)
    "#{format_number(minutes)}:#{format_number(seconds)}"
  end

  def format_number(number)
    format('%02d', number)
  end
end