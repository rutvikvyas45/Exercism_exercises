class Microwave
  def initialize(time)
    @time = time
    @minutes, @seconds = time.to_i.divmod 100
  end

  def timer
    minutes_count
    seconds_count
    format('%02d:%02d', @minutes, @seconds)
  end

  def minutes_count
    if @seconds > 59
      @minutes += 1
    end
  end

  def seconds_count
    if @seconds > 59
      @seconds -= 60
    end
  end
end

puts Microwave.new(60).timer