class CreateEvaluationEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :evaluation_employees do |t|
      t.integer :grades
      t.string :comments
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
