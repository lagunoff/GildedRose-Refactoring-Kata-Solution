class DegradationStrategyBackstagePasses < DegradationStrategy
  def degrade(sell_in, quality)
    sell_in -= 1
    if sell_in >= 10
      quality += 1
    elsif (9...5).include?(sell_in)
      quality += 2
    elsif (0...5).include?(sell_in)
      quality += 3
    elsif sell_in < 0
      quality = 0
    end

    quality = 0 if quality < 0
    quality = 50 if quality > 50

    [sell_in, quality]
  end
end
