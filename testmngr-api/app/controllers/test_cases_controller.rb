class TestCasesController < ApplicationController
  before_action :set_test_case, only: [:show, :update, :destroy]

  # GET /test_cases
  def index
    @test_cases = TestCase.all

    render json: @test_cases
  end

  # GET /test_cases/1
  def show
    render json: @test_case
  end

  # POST /test_cases
  def create
    @test_case = TestCase.new(test_case_params)

    if @test_case.save
      render json: @test_case, status: :created, location: @test_case
    else
      render json: @test_case.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /test_cases/1
  def update
    if @test_case.update(test_case_params)
      render json: @test_case
    else
      render json: @test_case.errors, status: :unprocessable_entity
    end
  end

  # DELETE /test_cases/1
  def destroy
    @test_case.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_case
      @test_case = TestCase.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def test_case_params
      #params.require(:test_case).permit(:title, :status_id)
      res = ActiveModelSerializers::Deserialization.jsonapi_parse(params)
      res
    end
end
