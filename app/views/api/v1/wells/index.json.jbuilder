json.array! @wells do |well|
  json.extract! well, :id, :name, :customer, :northing, :easting, :coordinate_system, :country, :state, :county, :city, :area, :field, :structure
end