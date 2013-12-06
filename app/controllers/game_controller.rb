class GameController < ApplicationController
  def play
    session[:games_played] ||= 0
    session[:correct_answers] ||= 0
    new_game
  end

  def score
    result = params[:result]
    session[:games_played] += 1
    session[:correct_answers] += 1 if result == "right"
    new_game
    render json: {:games_played => session[:games_played], :correct_answers => session[:correct_answers],
                  :human_image => ActionController::Base.helpers.asset_path(@image1.file_name), :cat_image => ActionController::Base.helpers.asset_path(@image2.file_name),
                  :sound_file => ActionController::Base.helpers.asset_path(@sound.file_name), :cat_sound => @sound.sound_type}
  end

  private

  def new_game
    get_images
    get_sound
    @score = "#{session[:correct_answers] }/#{session[:games_played]}"
  end

  def get_images
    @image1 = Image.order("RANDOM()").where(:cat => false).first
    @image2 = Image.order("RANDOM()").where(:cat => true).first
  end

  def get_sound
    @sound = Meow.order("RANDOM()").first
  end
end


