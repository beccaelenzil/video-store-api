class MoviesController < ApplicationController
  def index
    movies = Movie.all.as_json(only: [:title, :overview, :release_date, :inventory])
    render json: movies, status: :ok
  end
end
