class TestCreateData < ActiveRecord::Migration[5.1]
  def change
  end
  Todolist.create(to_do_name: "完成待辦事項開發", due_date: "2017-11-30 19:30", note: "完成後立馬吃麥當勞慶祝")
  Todolist.create(to_do_name: "填寫學伴調查", due_date: "2017-11-30 21:30", note: "快速完成餐廳論壇功能")
end
