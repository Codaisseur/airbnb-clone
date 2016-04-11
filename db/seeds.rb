  #.string   "name"
  #.string   "address"
  #.string   "zip"
  #.string   "city"
  #.text     "description"
print "Seeding OfficeSpaces..."
(1..5).each do |i|
  OfficeSpace.create(
    name: "Office #{i}",
    address: "Weesperstraat 6#{i}",
    zip: "101#{i} AC",
    city: "Amsterdam",
    description: "OMg this is SO Offize #{i}!!111!!",
    photo: "office#{i}.jpg"
  )
end
puts "done!"
