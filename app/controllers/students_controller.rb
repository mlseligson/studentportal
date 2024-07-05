class StudentsController < ApplicationController
  before_action :set_student, only: %i[ show edit update destroy ]

  # GET /students or /students.json
  def index
    @students = Student.all
  end

  # GET /students/1 or /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students or /students.json
  def create
    @student = Student.new(student_params)


      if @student.save
        render :show, status: :created, location: @student
      else
        render json: @student.errors, status: :unprocessable_entity
      end

  end

  # PATCH/PUT /students/1 or /students/1.json
  def update

      if @student.update(student_params)
        render :show, status: :ok, location: @student
      else
        render json: @student.errors, status: :unprocessable_entity
      end

  end

  # DELETE /students/1 or /students/1.json
  def destroy
    @student.destroy!

    head :no_content
  end
def summarize
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :phone_number, :short_bio, :linkedin_url, :website_url, :resume_url, :github)
    end
end
