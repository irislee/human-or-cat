class GameController < ApplicationController
  def play
    @sound = Meow.order("RANDOM()").first.file_name
    @image1 = Image.order("RANDOM()").where(:cat => false).first.file_name
    @image2 = Image.order("RANDOM()").where(:cat => true).first.file_name
  end
end


