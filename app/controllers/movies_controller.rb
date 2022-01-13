class MoviesController < ApplicationController

  def index
    render json: {Movies: Movie.all}
  end

  def show
    #Better method but trying where for learning
    #render json: {Movies: Movie.find(params[:id])}

    render json: {Movies: Movie.where(id: params[:id])}
  end
end
