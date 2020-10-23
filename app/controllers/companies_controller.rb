class CompaniesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new]
# THIS NEEDS TO BE CHANGED EVENTUALLY
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company_new = Company.new
  end

end
