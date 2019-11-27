KEYS = [:name, :registered_at, :address, :city, :state, :postal_code, :phone, :id]

class CustomersController < ApplicationController
  def index
    customers = Customer.all.as_json(only: KEYS)
    render json: customers, status: :ok
  end
end
