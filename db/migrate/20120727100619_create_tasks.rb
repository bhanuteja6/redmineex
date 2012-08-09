class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :taskid
      t.string :taskname
      t.text :description
  	  t.references :userstory

      t.timestamps
    end
  end
end
