class Todolist < ApplicationRecord
	validates_presence_of :to_do_name, :due_date 
end
