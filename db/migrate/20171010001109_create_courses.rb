class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.references :subject, foreign_key: true
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
