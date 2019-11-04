class Movie < ApplicationRecord
  def index
    pets = Pet.all.as_json(only: [:id, :name, :age, :human])
    render json: pets, status: :ok
  end
end
