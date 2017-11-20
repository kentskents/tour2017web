class PastCatsController < ApplicationController
  before_action :set_past_cat, only: [:show, :edit, :update, :destroy]

  # GET /past_cats
  # GET /past_cats.json
  def index
    @past_cats = PastCat.joins(:cat)
  end

  # GET /past_cats/1
  # GET /past_cats/1.json
  def show
  end

  # GET /past_cats/new
  def new
    @past_cat = PastCat.new
  end

  # GET /past_cats/1/edit
  def edit
  end

  # POST /past_cats
  # POST /past_cats.json
  def create
    @past_cat = PastCat.new(past_cat_params)

    respond_to do |format|
      if @past_cat.save
        format.html { redirect_to @past_cat, notice: 'Past cat was successfully created.' }
        format.json { render :show, status: :created, location: @past_cat }
      else
        format.html { render :new }
        format.json { render json: @past_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /past_cats/1
  # PATCH/PUT /past_cats/1.json
  def update
    respond_to do |format|
      if @past_cat.update(past_cat_params)
        format.html { redirect_to @past_cat, notice: 'Past cat was successfully updated.' }
        format.json { render :show, status: :ok, location: @past_cat }
      else
        format.html { render :edit }
        format.json { render json: @past_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /past_cats/1
  # DELETE /past_cats/1.json
  def destroy
    @past_cat.destroy
    respond_to do |format|
      format.html { redirect_to past_cats_url, notice: 'Past cat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_past_cat
      @past_cat = PastCat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def past_cat_params
      params.require(:past_cat).permit(:cat_id, :whereabouts)
    end
end
