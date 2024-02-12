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

    if @student.update(students_param)
      # flash[:notice] = "Success message"
      redirect_to students_path
    else
      redirect_to students_path
    end
  end

  def destroy
    @student = Student.find(params[:id])

    if @student.destroy
      # flash[:notice] = "Success message"
      redirect_to students_path
    else
      redirect_to students_path
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(students_param)
    if @student.save
      flash[:notice] = "Success message"
      redirect_to students_path
    else
      redirect_to students_path
    end
  end

  private

  def students_param
    params.require(:student).permit(:name, :age, :address, :school, :std, :medium, :email, :phone)
  end

end
