class AddPhotoToOfficeSpaces < ActiveRecord::Migration
  def change
    add_column :office_spaces, :photo, :string
  end
end
