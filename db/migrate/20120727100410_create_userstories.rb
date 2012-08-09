class CreateUserstories < ActiveRecord::Migration
  def change
    create_table :userstories do |t|
      t.string :title
      t.text :description
	  t.references :iteration

      t.timestamps
    end
  end
end
