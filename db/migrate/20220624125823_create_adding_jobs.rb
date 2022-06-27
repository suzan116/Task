class CreateAddingJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :adding_jobs do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
