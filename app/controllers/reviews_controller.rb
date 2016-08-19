class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_resource
  before_action :authenticate_user!
  # only signed in user can write review

  def new
    @review = Review.new
  end

  def edit
  end

    def create
      @review = Review.new(review_params)
      @review.user_id = current_user.id #if a user leaves a review, they are assigned their user id
      @review.resource_id = @resource.id
      # here we are setting the resource_id attribute of the review equal to the resource id (which is an attribute automatically created)

      if @review.save
        redirect_to @resource
      else
        render 'new'
      end
    end

  def update
    @review.update(review_params)
  end

  def destroy
    @review.destroy
    redirect_to root_path
  end

  private

    def set_review
      @review = Review.find(params[:id])
    end

    def set_resource
      @resource = Resource.find(params[:resource_id])
    end

    def review_params
      params.require(:review).permit(:rating, :comment)
    end
end
