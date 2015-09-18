require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { company: @job.company, date_applied: @job.date_applied, employer_response_date: @job.employer_response_date, hourly_wage_amount: @job.hourly_wage_amount, hourly_wage_bool: @job.hourly_wage_bool, interview_one: @job.interview_one, interview_three: @job.interview_three, interview_two: @job.interview_two, job_found_at: @job.job_found_at, job_notes: @job.job_notes, job_title: @job.job_title, salary_amount: @job.salary_amount, salary_bool: @job.salary_bool, salary_if_known: @job.salary_if_known }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    patch :update, id: @job, job: { company: @job.company, date_applied: @job.date_applied, employer_response_date: @job.employer_response_date, hourly_wage_amount: @job.hourly_wage_amount, hourly_wage_bool: @job.hourly_wage_bool, interview_one: @job.interview_one, interview_three: @job.interview_three, interview_two: @job.interview_two, job_found_at: @job.job_found_at, job_notes: @job.job_notes, job_title: @job.job_title, salary_amount: @job.salary_amount, salary_bool: @job.salary_bool, salary_if_known: @job.salary_if_known }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
