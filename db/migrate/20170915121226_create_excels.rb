class CreateExcels < ActiveRecord::Migration[5.1]
  def change
    create_table :excels do |t|
      t.string :name
      t.decimal :sales
      t.string :country
      t.string :quarter

      t.timestamps
    end
  end
end
