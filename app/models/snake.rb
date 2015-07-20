class Snake < ActiveRecord::Base
  belongs_to :user

def match_red
  if red == false
  update_attribute(:red, true)
  end
end

def match_blue
  if blue == false
    update_attribute(:blue, true)
  end
end

def match_yellow
  if yellow == false
    update_attribute(:yellow, true)
  end
end

def match_black
  if black == false
    update_attribute(:black, true)
  end
end

def match_green
  if green == false
    update_attribute(:green, true)
  end
end

def match_white
  if white == false
    update_attribute(:white, true)
  end
end

def match_orange
  if orange == false
    update_attribute(:orange, true)
  end
end

def match_band
  if band_pattern == false
    update_attribute(:band_pattern, true)
  end
end

def match_stripes
  if stripe_pattern == false
    update_attribute(:stripe_pattern, true)
  end
end

def match_solid
  if solid_color_pattern == false
    update_attribute(:solid_color_pattern, true)
  end
end

def match_blotch
  if blotch_pattern == false
    update_attributes(:blotch_pattern, true)
  end
end
