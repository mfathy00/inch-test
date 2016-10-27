class ImportController < ApplicationController
  def index
    @buildings = Building.all
    @persons = Person.all
    respond_to do |format|
      format.html
    end
  end

  def csv_upload
    if params[:building_file].present?
        Building.import(params[:building_file].path)
        redirect_to root_url, notice: "Buildings imported."
    end
    if params[:person_file].present?
        Person.import(params[:person_file].path)
        redirect_to root_url, notice: "Person imported."
    end
  end
end
