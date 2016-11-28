class Bird
  def initialize
    @color = nil
    @spotted = nil
    @can_fly = nil
    @length = 0.0
    @bird_ability = nil
  end
  def set_color(c)
    @color = c
  end
  def get_color
    return @color
  end

  def set_spotted(spot)
    @spotted = spot
  end
  def get_spotted
    return @spotted
  end

  def set_can_fly(bool)
    @can_fly = bool
  end
  def get_can_fly
    return @can_fly
  end

  def set_length (len)
    @length = len.to_i
  end
  def get_length
    return @length
  end
  def chirp
    return 'tweet! tweet!'
  end
  def flying_ability
    if @can_fly
      @bird_ability = 'I can Fly!'
    else
      @bird_ability = 'I cannot Fly!'
    end
  end

  def waddle
    return 'waddle! waddle!'
  end
  def peck
    return 'peck! peck!'
  end
  def describe
    if @can_fly
      return "I am a Kingfisher. I was spotted in #{@spotted} by my royal blue and orange feather. #{@bird_ability}"
    else
      return "I am a Kingfisher. I was spotted in #{@spotted} by my royal blue and orange feather. #{@bird_ability}"
    end
  end
end
