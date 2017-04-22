class TradedCompaniesController < ApplicationController
  before_action :set_traded_company, only: [:show, :edit, :update, :destroy]

  # GET /traded_companies
  # GET /traded_companies.json
  def index
    @traded_companies = TradedCompany.all
  end

  # GET /traded_companies/1
  # GET /traded_companies/1.json
  def show
  end

  # GET /traded_companies/new
  def new
    @traded_company = TradedCompany.new
  end

  # GET /traded_companies/1/edit
  def edit
  end

  # POST /traded_companies
  # POST /traded_companies.json
  def create
    @traded_company = TradedCompany.new(traded_company_params)

    respond_to do |format|
      if @traded_company.save
        format.html { redirect_to @traded_company, notice: 'Traded company was successfully created.' }
        format.json { render :show, status: :created, location: @traded_company }
      else
        format.html { render :new }
        format.json { render json: @traded_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /traded_companies/1
  # PATCH/PUT /traded_companies/1.json
  def update
    respond_to do |format|
      if @traded_company.update(traded_company_params)
        format.html { redirect_to @traded_company, notice: 'Traded company was successfully updated.' }
        format.json { render :show, status: :ok, location: @traded_company }
      else
        format.html { render :edit }
        format.json { render json: @traded_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traded_companies/1
  # DELETE /traded_companies/1.json
  def destroy
    @traded_company.destroy
    respond_to do |format|
      format.html { redirect_to traded_companies_url, notice: 'Traded company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_traded_company
      @traded_company = TradedCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def traded_company_params
      params.require(:traded_company).permit(:name, :type, :current_price, :n_stocks)
    end
end
