class GameController < ApplicationController
  def play
    @sound = Meow.order("RANDOM()").first
    # @image1 = '/human1.jpg'
    # @image2 = cat
  end
end

