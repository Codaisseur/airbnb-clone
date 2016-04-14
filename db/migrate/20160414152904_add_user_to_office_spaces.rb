class AddUserToOfficeSpaces < ActiveRecord::Migration
  def change
    add_reference :office_spaces, :user, index: true, foreign_key: true
  end
end
