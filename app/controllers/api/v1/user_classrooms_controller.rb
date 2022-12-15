class UserClassroomsController < ApplicationController
  before_action :set_user_classroom, only: %i[ show update destroy ]

  # GET /user_classrooms
  def index
    @user_classrooms = UserClassroom.all

    render json: @user_classrooms
  end

  # GET /user_classrooms/1
  def show
    render json: @user_classroom
  end

  # POST /user_classrooms
  def create
    @user_classroom = UserClassroom.new(user_classroom_params)

    if @user_classroom.save
      render json: @user_classroom, status: :created, location: @user_classroom
    else
      render json: @user_classroom.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_classrooms/1
  def update
    if @user_classroom.update(user_classroom_params)
      render json: @user_classroom
    else
      render json: @user_classroom.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_classrooms/1
  def destroy
    @user_classroom.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_classroom
      @user_classroom = UserClassroom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_classroom_params
      params.require(:user_classroom).permit(:user_id, :classroom_id)
    end
end
