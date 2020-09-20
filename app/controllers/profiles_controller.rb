class ProfilesController < ApplicationController
  before_action :set_profile, only: :show

  def index
    @profiles = Profile.near(params[:city] || 'São Paulo')
    filter_by_category if params[:category]
    render json: @profiles
  end

  def show
    render json: @profile, product_categories: true
  end
  
  def search
    @profiles = Profile.search(
      name_or_description_cont: params[:q]
    ).result
    @profiles = @profiles.near(params[:city]) if params[:city]
    render json: @profiles
  end

  private

  def set_profile
    @profile = Profile.find_by(id: params[:id])
  end

  def filter_by_category
    @profiles = @profiles.select do |p|
      p.category.title == params[:category]
    end
  end

end
