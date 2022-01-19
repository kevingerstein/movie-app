class MoviesController < ApplicationController

  def index
    render json: Movie.all
  end

  def show
    render json: Movie.find(params[:id])
  end

  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    movie.save
    render json: movie
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    #regular || does not work if old value is true and new is false
    #movie.english = params[:english] || movie.english 
    movie.english = params[:english].nil? ? movie.english : params[:english]
    puts movie.english
    movie.save
    render json: movie
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "Movie was deleted!!!"}
  end
end
