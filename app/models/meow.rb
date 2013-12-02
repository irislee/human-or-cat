class Meow < ActiveRecord::Base
  def sound_type
    if self.cat
      "cat"
    else
      "human"
    end
  end
end