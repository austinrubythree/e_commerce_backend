

# json.products do

#   # @products.each{ |t| json.set! t.id, t.description }
#   @productts.collect do |product|
#     product.name
#   end
# end

json.array! @products, :id, :name, :price, :description, :image



