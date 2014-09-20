class DocumentQueriesController < ApplicationController
  before_action :set_document_query, only: [:show, :edit, :update, :destroy]

  # GET /document_queries
  # GET /document_queries.json
  def index
    @document_queries = DocumentQuery.all
  end

  # GET /document_queries/1
  # GET /document_queries/1.json
  def show
  end

  # GET /document_queries/new
  def new
    @document_query = DocumentQuery.new
  end

  # GET /document_queries/1/edit
  def edit
  end

  # POST /document_queries
  # POST /document_queries.json
  def create
    @document_query = DocumentQuery.new(document_query_params)

    respond_to do |format|
      if @document_query.save
        format.html { redirect_to @document_query, notice: 'Document query was successfully created.' }
        format.json { render :show, status: :created, location: @document_query }
      else
        format.html { render :new }
        format.json { render json: @document_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /document_queries/1
  # PATCH/PUT /document_queries/1.json
  def update
    respond_to do |format|
      if @document_query.update(document_query_params)
        format.html { redirect_to @document_query, notice: 'Document query was successfully updated.' }
        format.json { render :show, status: :ok, location: @document_query }
      else
        format.html { render :edit }
        format.json { render json: @document_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_queries/1
  # DELETE /document_queries/1.json
  def destroy
    @document_query.destroy
    respond_to do |format|
      format.html { redirect_to document_queries_url, notice: 'Document query was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document_query
      @document_query = DocumentQuery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_query_params
      params.require(:document_query).permit(:term)
    end
end
