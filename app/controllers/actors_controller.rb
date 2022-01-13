class ActorsController < ApplicationController
  def find_actor
    actor_id = params[:id]
    actor = Actor.find_by(id: actor_id)
    render json: {: actor}
  end

end
