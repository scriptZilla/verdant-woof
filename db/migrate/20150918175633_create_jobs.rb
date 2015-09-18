class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :company
      t.string :job_found_at
      t.date :date_applied
      t.date :employer_response_date
      t.boolean :salary_bool
      t.boolean :salary_if_known
      t.boolean :hourly_wage_bool
      t.float :hourly_wage_amount
      t.integer :salary_amount
      t.string :interview_one
      t.string :interview_two
      t.string :interview_three
      t.text :job_notes

      t.timestamps null: false
    end
  end
end
