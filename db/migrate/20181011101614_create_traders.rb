class CreateTraders < ActiveRecord::Migration[5.1]
  def change
    create_table :traders do |t|
      t.string :name
      t.text :note

      t.timestamps
    end
  end
end
