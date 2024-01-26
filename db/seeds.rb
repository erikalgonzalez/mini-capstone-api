# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# product = Product.new(
#   name: "rug",
#   price: 50,
#   description: "floor covering that covers part of your floor",
#   image_url: "https://images.thdstatic.com/productImages/5fec94d4-a763-4a86-b020-88b160da45e2/svn/light-grey-area-rugs-djyc-g-b03047087-31_600.jpg"
# )
# product.save

# products = Product.all

# products.each do |product|
#   Image.create!(product_id: product.id, url: "https://media.npr.org/assets/img/2023/12/21/gettyimages-1670452045-51383d4a25ee4bc9b87b8d22bc00db5641417e75-s1100-c50.jpg"
#   )
# end

# make a new image for all products without an image
# https://media.istockphoto.com/id/1354776457/vector/default-image-icon-vector-missing-picture-page-for-website-design-or-mobile-app-no-photo.jpg?s=612x612&w=0&k=20&c=w3OW0wX3LyiFRuDHo9A32Q0IUMtD4yjXEvQlqyYk9O4=

# products = Product.all

# products.each do |product|
#   if product.images.length < 1
#     Image.create!(
#       url: "https://media.istockphoto.com/id/1354776457/vector/default-image-icon-vector-missing-picture-page-for-website-design-or-mobile-app-no-photo.jpg?s=612x612&w=0&k=20&c=w3OW0wX3LyiFRuDHo9A32Q0IUMtD4yjXEvQlqyYk9O4=",
#       product_id: product.id
#     )
#   end
# end