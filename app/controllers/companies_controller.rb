class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new
    @company.name = params[:name]
    @company.status = params[:status]
    @company.user_id = params[:user_id]
    @company.contact_id = params[:contact_id]

    if @company.save
      redirect_to "/companies", :notice => "Company created successfully."
    else
      render 'new'
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])

    @company.name = params[:name]
    @company.status = params[:status]
    @company.owner_id = params[:owner_id]
    @company.contact_id = params[:contact_id]
    @company.conversation_history = params[:conversation_history]

    if @company.save
      redirect_to "/companies", :notice => "Company updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @company = Company.find(params[:id])

    @company.destroy

    redirect_to "/companies", :notice => "Company deleted."
  end

  def my_companies
    @companies = current_user.companies
  end



end
