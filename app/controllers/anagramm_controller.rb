class AnagrammController < ApplicationController
  def create
    @anagramm = Anagramm.new(params[:word1],params[:word2])
    @anagramm.solve

    render json: @anagramm
  end
end
