require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url, as: :json
    assert_response :success
  end

  test "should create student" do
    assert_difference("Student.count") do
      post students_url, params: { student: { blog: @student.blog, email: @student.email, first_name: @student.first_name, github: @student.github, last_name: @student.last_name, linkedin_url: @student.linkedin_url, phone_number: @student.phone_number, resume_url: @student.resume_url, short_bio: @student.short_bio, twitter: @student.twitter } }, as: :json
    end

    assert_response :created
  end

  test "should show student" do
    get student_url(@student), as: :json
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { blog: @student.blog, email: @student.email, first_name: @student.first_name, github: @student.github, last_name: @student.last_name, linkedin_url: @student.linkedin_url, phone_number: @student.phone_number, resume_url: @student.resume_url, short_bio: @student.short_bio, twitter: @student.twitter } }, as: :json
    assert_response :success
  end

  test "should destroy student" do
    assert_difference("Student.count", -1) do
      delete student_url(@student), as: :json
    end

    assert_response :no_content
  end
end
