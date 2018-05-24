class CohortsStudentsController < ApplicationController
  before_action :set_cohorts_student, only: [:show, :edit, :update, :destroy]

  # GET /cohorts_students
  # GET /cohorts_students.json
  def index
    @cohorts_students = CohortsStudent.all
  end

  # GET /cohorts_students/1
  # GET /cohorts_students/1.json
  def show
  end

  # GET /cohorts_students/new
  def new
    @cohorts_student = CohortsStudent.new
  end

  # GET /cohorts_students/1/edit
  def edit
  end

  # POST /cohorts_students
  # POST /cohorts_students.json
  def create
    @cohorts_student = CohortsStudent.new(cohorts_student_params)

    respond_to do |format|
      if @cohorts_student.save
        format.html { redirect_to @cohorts_student, notice: 'Cohorts student was successfully created.' }
        format.json { render :show, status: :created, location: @cohorts_student }
      else
        format.html { render :new }
        format.json { render json: @cohorts_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cohorts_students/1
  # PATCH/PUT /cohorts_students/1.json
  def update
    respond_to do |format|
      if @cohorts_student.update(cohorts_student_params)
        format.html { redirect_to @cohorts_student, notice: 'Cohorts student was successfully updated.' }
        format.json { render :show, status: :ok, location: @cohorts_student }
      else
        format.html { render :edit }
        format.json { render json: @cohorts_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cohorts_students/1
  # DELETE /cohorts_students/1.json
  def destroy
    @cohorts_student.destroy
    respond_to do |format|
      format.html { redirect_to cohorts_students_url, notice: 'Cohorts student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cohorts_student
      @cohorts_student = CohortsStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cohorts_student_params
      params.require(:cohorts_student).permit(:cohort_id, :student_id)
    end
end
