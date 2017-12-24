class CreateTodolists < ActiveRecord::Migration[5.1]
  def change
    create_table :todolists do |t|
    	t.string :to_do_name
    	t.date :due_date
    	t.text :note
      t.timestamps
    end
  end
end
