class CreateApps < ActiveRecord::Migration[5.2]
  def change
    create_table :apps do |t|
      t.string :name
      t.float :rating
      t.datetime :release_date
      t.text :description
      t.integer :downloads
      t.integer :rated_times
      t.string :author
      t.float :version

      t.timestamps
    end
  end
end
