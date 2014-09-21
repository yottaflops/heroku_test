class RegisterSearchesController < ApplicationController
  before_action :set_register_search, only: [:show, :edit, :update, :destroy]

  # GET /register_searches
  # GET /register_searches.json
  def index
    @register_searches = RegisterSearch.all
  end

  # GET /register_searches/1
  # GET /register_searches/1.json
  def show
  end

  # GET /register_searches/new
  def new
    @register_search = RegisterSearch.new
  end

  # GET /register_searches/1/edit
  def edit
  end

  # POST /register_searches
  # POST /register_searches.json
  def create
    @register_search = RegisterSearch.new(register_search_params)

    respond_to do |format|
      if @register_search.save
        format.html { redirect_to @register_search, notice: 'Register search was successfully created.' }
        format.json { render :show, status: :created, location: @register_search }
      else
        format.html { render :new }
        format.json { render json: @register_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /register_searches/1
  # PATCH/PUT /register_searches/1.json
  def update
    respond_to do |format|
      if @register_search.update(register_search_params)
        format.html { redirect_to @register_search, notice: 'Register search was successfully updated.' }
        format.json { render :show, status: :ok, location: @register_search }
      else
        format.html { render :edit }
        format.json { render json: @register_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /register_searches/1
  # DELETE /register_searches/1.json
  def destroy
    @register_search.destroy
    respond_to do |format|
      format.html { redirect_to register_searches_url, notice: 'Register search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register_search
      @register_search = RegisterSearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def register_search_params
      params[:register_search]
    end
end
