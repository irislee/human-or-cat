class GameController < ApplicationController
  def play
    @sound = Meow.order("RANDOM()").first
    @image1 = Image.order("RANDOM()").where(:cat => false).first
    @image2 = Image.order("RANDOM()").where(:cat => true).first
  end
end


