class CreateEvaluationCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :evaluation_companies do |t|
      t.integer :grades
      t.string :comments

      t.timestamps
    end
  end
end
