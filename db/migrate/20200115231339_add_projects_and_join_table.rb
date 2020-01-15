class AddProjectsAndJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.timestamps
    end

    create_table :divisions_projects, id: false do |t|
      t.belongs_to :project, index: true
      t.belongs_to :division, index: true
    end
  end
end
