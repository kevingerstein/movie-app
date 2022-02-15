class MoviesController < ApplicationController
  #before_action :authenticate_admin, include: [:create, :update, :destroy]
  #before_action :authenticate_admin, except: [:index, :show]

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
    if movie.save
      render json: movie
    else
      render json: { errors: movie.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = !params[:english] ? false : true

    if movie.save
      render json: movie
    else
      render json: { errors: movie.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "Movie was deleted!!!"}
  end
end
