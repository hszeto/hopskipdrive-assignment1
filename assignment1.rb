class TimeToDegree
  require 'date'
  attr_reader :time_str
  
  # Short hand moves 30 degree per hour
  DEGREE_PER_HOUR = 30
  # Long hand moves 6 degree per minute
  DEGREE_PER_MINUTE = 6

  def initialize(time_str)
    @time_str = time_str
  end

  def convert
    @parsed_time = DateTime.parse(time_str)

    deg = (hour_deg - minute_deg).abs
    deg = 360 - deg if deg > 180

    deg
  rescue => error
    return error.message
  end

  private

  def hour_deg
    hour = @parsed_time.strftime("%I").to_i

    DEGREE_PER_HOUR * hour
  end

  def minute_deg
    minutes = @parsed_time.strftime("%M").to_i

    DEGREE_PER_MINUTE * minutes
  end
end
