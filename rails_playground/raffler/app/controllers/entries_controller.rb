class EntriesController < ApplicationController
  respond_to :json

  def index
    respond_with Entry.all
  end

  def create
    respond_with Entry.create(permitted_params)
  end

  def update
    respond_with Entry.update(params[:id], permitted_params)
  end

  private

  def permitted_params
    params.require(:entry).permit(:name, :winner)
  end
end
