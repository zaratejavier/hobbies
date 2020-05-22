class HobbiesController < ApplicationController
  before_action :set_hobbies, only: [:show, :edit, :update, :destroy]
  
  
  
  def index
    @hobbies = current_user.hobbies
  end

  def show
  end

  def new
    @hobby = Hobby.new
  end

  def create
    @hobby = current_user.hobbies.new(hobby_params)
    if @hobby.save 
      redirect_to hobbies_path
    else
      render :new
    end
  end

  def update
    if @hobby.update(hobby_params)
      redirect_to hobby_path
    else
      render :edit
    end
  end
  
  def edit
  end

  # def destroy
  #   @hobby = Hobby.find(hobby_params).destroy 
  #   redirect_to hobby_path
  # end

  def destroy
    @hobby.destroy
    redirect_to hobbies_path
  end

  private
  def hobby_params
    params.require(:hobby).permit(:name, :description)
  end

  def set_hobbies 
    @hobby = current_user.hobbies.find(params[:id])
  end

end




