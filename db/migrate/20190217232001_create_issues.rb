class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.jsonb :data
      t.integer :issue_id
      t.integer :repository_id
      t.string :action
      t.string :repository_name
      t.string :owner_name

      t.timestamps
    end
  end
end
