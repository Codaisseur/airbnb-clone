class CreateOfficeSpaces < ActiveRecord::Migration
  def change
    create_table :office_spaces do |t|
      t.string :name
      t.string :address
      t.string :zip
      t.string :city
      t.text :description

      t.timestamps null: false
    end
  end
end
