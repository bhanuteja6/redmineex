class CreateIterations < ActiveRecord::Migration
  def change
    create_table :iterations do |t|
      t.date :startdate
      t.date :enddate
	  t.references :project

      t.timestamps
    end
  end
end
