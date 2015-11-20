class SuperlasersController < ApplicationController
  before_action :set_superlaser, only: [:show, :edit, :update, :destroy]

  def index
    @superlasers = Superlaser.all
  end

  def show
  end

  def new
    @superlaser = Superlaser.new
  end

  def edit
  end

  def create
    @superlaser = Superlaser.new(superlaser_params)

    respond_to do |format|
      if @superlaser.save
        format.html { redirect_to @superlaser, notice: 'Superlaser was successfully created.' }
        format.json { render :show, status: :created, location: @superlaser }
      else
        format.html { render :new }
        format.json { render json: @superlaser.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @superlaser.update(superlaser_params)
        format.html { redirect_to @superlaser, notice: 'Superlaser was successfully updated.' }
        format.json { render :show, status: :ok, location: @superlaser }
      else
        format.html { render :edit }
        format.json { render json: @superlaser.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @superlaser.destroy
    respond_to do |format|
      format.html { redirect_to superlasers_url, notice: 'Superlaser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_superlaser
      @superlaser = Superlaser.find(params[:id])
    end

    def superlaser_params
      params.require(:superlaser).permit(:name)
    end
end
