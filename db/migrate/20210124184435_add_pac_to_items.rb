class AddPacToItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :pac, null: false, foreign_key: true
  end
end
