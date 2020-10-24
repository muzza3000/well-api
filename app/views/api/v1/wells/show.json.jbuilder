json.extract! @well, :id, :name, :customer, :northing, :easting, :coordinate_system, :country, :state, :county, :city, :area, :field, :structure
# json.comments @well.comments do |comment|
#   json.extract! comment, :id, :content
# end