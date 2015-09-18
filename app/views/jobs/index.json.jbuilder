json.array!(@jobs) do |job|
  json.extract! job, :id, :job_title, :company, :job_found_at, :date_applied, :employer_response_date, :salary_bool, :salary_if_known, :hourly_wage_bool, :hourly_wage_amount, :salary_amount, :interview_one, :interview_two, :interview_three, :job_notes
  json.url job_url(job, format: :json)
end
