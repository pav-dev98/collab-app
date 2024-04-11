class AddTechnologiesColumnToProject < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :technologies, :text
  end
end
