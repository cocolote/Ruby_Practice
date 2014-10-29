class Timer

  attr_accessor :seconds

  def seconds
    @seconds = 0
  end

  def time_string
    @time_string = (Time.new(0) + @seconds).strftime("%H:%M:%S")
  end

end