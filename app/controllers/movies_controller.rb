class MoviesController < ApplicationController

  def index
    render json: {Movies: Movie.all}
  end

  def show
    render json: {Movies: Movie.find(params[:id])}
  end
end
