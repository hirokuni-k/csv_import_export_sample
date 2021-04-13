class ImportController < ApplicationController
  def create
    User.import_csv(file: params[:file]) if params[:file].present?
    redirect_to users_path
  end
end
