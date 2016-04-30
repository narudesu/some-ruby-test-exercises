class Timer
  # Let's continue some other time.
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    "#{hours_s}:#{minutes_s}:#{seconds_s}"
  end
  private

  def seconds_s
    seconds = @seconds % 60
    stringify_time seconds
  end

  def minutes_s
    minutes = (@seconds / 60) % 60
    stringify_time minutes
  end

  def hours_s
    hours = @seconds / 3600
    stringify_time hours
  end

  def stringify_time(time)
    if time < 10
      time = "0" + time.to_s
    else
      time.to_s
    end
  end
end
