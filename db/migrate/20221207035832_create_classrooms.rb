class CreateClassrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :classrooms do |t|
      t.integer :rank
      t.integer :formality
      t.integer :grade
      t.string :subject
      t.string :address
      t.string :time
      t.string :phone
      t.string :time_to_start
      t.string :time_to_end
      t.string :level
      t.string :salary
      t.string :other
      t.integer :status

      t.timestamps
    end
  end
end
