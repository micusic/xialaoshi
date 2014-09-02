class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :school_id
      t.string :class_id

      t.timestamps
    end
  end
end
