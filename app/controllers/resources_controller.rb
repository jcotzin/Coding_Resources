class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def search
    if params[:search].present?
      @resources = Resource.search(params[:search])
    else
      @resources = Resource.all
    end
  end

  def index
    @resources = Resource.all
  end

  def show
  end

  def new
    @resource = current_user.resources.build
  end

  def edit
  end

  def create
    @resource = current_user.resources.build(resource_params)

    respond_to do |format|
      if @resource.save
        format.html { redirect_to action: "index", notice: 'Resource was successfully created.' }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to @resource, notice: 'Resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to resources_url, notice: 'Deleted!' }
      format.json { head :no_content }
    end
  end

  private

    def set_resource
      @resource = Resource.find(params[:id])
    end

    def resource_params
      params.require(:resource).permit(:title, :description, :rating, :thumb)
    end
end
