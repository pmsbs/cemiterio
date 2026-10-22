class CreateDeceaseds < ActiveRecord::Migration[8.1]
  def change
    create_table :deceaseds do |t|
      t.string :name
      t.string :cpf
      t.string :rg
      t.string :date_of_death
      t.string :date_of_birth
      t.text :observation
      t.belongs_to :plot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
