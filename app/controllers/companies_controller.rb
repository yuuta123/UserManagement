class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @companies = Company.new
  end

  def create
    company = Company.new(company_params)
    company.save!
    redirect_to companies_path, notice: "「#{company.name}」を登録しました。"
  end

  def show
  end

  def edit
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end

  
end
