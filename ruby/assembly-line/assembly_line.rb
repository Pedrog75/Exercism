class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed >= 1 && @speed <= 4
      production = @speed * 221
    elsif @speed >= 5 && @speed <= 8
      production = ((@speed * 221) * 0.9)
    elsif @speed == 9
      production = (9 * 221) * 0.8
    else @speed == 10
      production = (10 * 221) * 0.77
    end
  end

  def working_items_per_minute
    if @speed >= 1 && @speed <= 4
      production = (@speed * 221) / 60
      production.floor
    elsif @speed >= 5 && @speed <= 8
      production = (((@speed * 221) * 0.9)) / 60
      production.floor
    elsif @speed == 9
      production = ((9 * 221) * 0.8) / 60
      production.floor
    else @speed == 10
      production = ((10 * 221) * 0.77) / 60
      production.floor
    end
  end
end
