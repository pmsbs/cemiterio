class CreatePlots < ActiveRecord::Migration[8.1]
  def change
    create_table :plots do |t|
      t.text :observation

      t.timestamps
    end
  end
end
