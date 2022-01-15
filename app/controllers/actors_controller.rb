class ActorsController < ApplicationController

  def index
    obj = params[:id].nil? ? Actor.all : Actor.find(params[:id])
    render json: obj.as_json
  end

  def show
    render json: Actor.find(params[:id]).as_json
  end

end
