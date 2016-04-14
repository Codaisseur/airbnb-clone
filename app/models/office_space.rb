class OfficeSpace < ActiveRecord::Base
  #.string   "name"
  #.string   "address"
  #.string   "zip"
  #.string   "city"
  #.text     "description"
  validates_presence_of :name, :address, :zip, :city, :description
end
