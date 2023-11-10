class Microwave
  def initialize(time)
    @minutes, @seconds = time.to_i.divmod 100
    if @seconds > 59
      @minutes += 1
      @seconds -= 60
    end
  end

  def timer
    format('%02d:%02d', @minutes, @seconds)
  end
end

puts Microwave.new(60).timer
