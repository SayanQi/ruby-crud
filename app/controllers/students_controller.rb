class StudentsController < ApplicationController
  def new
    @student = Student.new

  end

  def index
    @students = Student.all
    # flash.now[:notice] = "User not found."
  end

  def show
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(students_param)
    if @student.update(students_param)
      flash[:success] = "Successfully Updated"
      redirect_to students_path
    else
      flash[:danger] = "Failed to Update user: #{error_messages(@user)}"
      redirect_to students_path
    end
    rescue StandardError => e
      flash[:danger] = "An error occurred: #{e.message.to_s}"
    redirect_to students_path
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    if @student.destroy
      flash[:success] = "Successfully Deleted"
      redirect_to students_path
    else
      flash[:danger] = "Failed to Delete user: #{error_messages(@user)}"
      redirect_to students_path
    end
  rescue StandardError => e
    flash[:danger] = "An error occurred: #{e.message.to_s}"
    redirect_to students_path
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(students_param)
    if @student.save
      flash[:success] = "Successfully Created"
      redirect_to students_path
    else

      # binding.pry

      flash[:danger] = "Failed to create user: #{@student.errors.messages }"
      # redirect_to new_student_path
      render :new, status: :unprocessable_entity
    end
    # rescue StandardError => e
    #   flash[:danger] = "An error occurred: #{e.message.to_s}"
    #   redirect_to students_path
  end

  private

  def students_param
    params.require(:student).permit(:name, :age, :address, :school, :std, :medium, :email, :phone)
  end

end
