class CompaniesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @companies = Company.all
  end

end
