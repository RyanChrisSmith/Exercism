class AssemblyLine
  def initialize(speed)
    @speed = speed
    @production_rate_per_hour = 0.0001
  end

  def production_rate_per_hour
    if @speed <= 4
      @speed * 221
    elsif @speed <= 8
      (@speed * 221) * 0.90
    elsif @speed == 9
      (@speed * 221) * 0.80
    else
      (@speed * 221) * 0.77
    end
  end

  def working_items_per_minute
    if @speed <= 4
      (@speed * 221) / 60
    elsif @speed <= 8
      ((@speed * 221) * 0.90) / 60
    elsif @speed == 9
      ((@speed * 221) * 0.80) / 60
    else
      ((@speed * 221) * 0.77) / 60
    end.floor()
  end
end
