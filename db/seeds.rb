Beer.destroy_all
Occasion.destroy_all


beers = {
  "beers": [
    {
      "image": "https://media.danmurphys.com.au/dmo/product/116903-1.png",
      "name": "Cascade Draft"
    },
    {
      "image": "https://abbeycellars.com.au/wp-content/uploads/2017/02/boags_draught_can.jpg",
      "name": "Boags Draft"
    },
    {
      "image": "https://cdn.shopify.com/s/files/1/0182/4871/products/m6WpZhU.jpeg?v=1388574549",
      "name": "Victoria Bitter"
    },
    {
      "image": "https://d21ojt30mmfrep.cloudfront.net/app/uploads/2018/02/28123618/TOO_091803_TooheysNew_V1_R2.png",
      "name": "Tooheys Beer"
    }

  ]
}


#JSON parsing practice


beers[:beers].each do |beer|
  new_beer = Beer.new(name: beer[:name], image_url: beer[:image])
  if new_beer.valid?
    new_beer.save
  else
    puts new_beer.errors.messages
  end
end
  

occasions = ["BBQ", "Night Club", "After Work", "Boys Trip", "Work Lunch"]

occasions.each do |o|
  new_occasion = Occasion.new(name: o)
  if new_occasion.valid?
    new_occasion.save
  else
    puts new_occasion.errors.messages 
  end
end 


