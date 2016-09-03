class CreateTestCases < ActiveRecord::Migration[5.0]
  def change
    create_table :test_cases do |t|
      t.string :title
      t.references :status, foreign_key: true

      t.timestamps
    end
  end
end
