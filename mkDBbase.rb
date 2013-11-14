
Guru.destroy_all
Food.destroy_all
Grade.destroy_all

dur=Guru.new(name: "Durianrider",    
             picture_url: "http://www.rawsomehealthy.com/wp-content/uploads/2013/04/durianrider4.jpg")
ben=Guru.new(name: "Ben Greenfield", 
             picture_url: "http://2.bp.blogspot.com/-3EKywKx0KGQ/Ua5nayrYhQI/AAAAAAAAM0c/Pd8mtvnrx_0/s1600/0f7cf524255fe90931186125c4e8bb7c.png")
ric=Guru.new(name: "Rich Roll",     
             picture_url: "http://runmehappy.files.wordpress.com/2013/03/rich-roll-web-bio-image1.jpg")

ban=Food.new(name: "Banana",               unit: "1 pcs")
app=Food.new(name: "Apple",                unit: "1 pcs")
oil=Food.new(name: "Olive Oil",            unit: "100 ml")
but=Food.new(name: "Butter",               unit: "100 g")
kal=Food.new(name: "Kale",                 unit: "1 hg")
alm=Food.new(name: "Almonds",              unit: "100 g")
wri=Food.new(name: "White rice, unboiled", unit: "100 ml")
avo=Food.new(name: "Avocado",              unit: "1 pcs")

[dur, ben, ric,
 ban, app, oil, but, kal, alm, wri, avo].each do |object|
  object.save
end

[FoodAmount.new(quantity: 5,   food: ban),
 FoodAmount.new(quantity: 3,   food: app),
 FoodAmount.new(quantity: 1.5, food: oil),
 FoodAmount.new(quantity: 2.3, food: but),
 FoodAmount.new(quantity: 1,   food: kal),
 FoodAmount.new(quantity: 5,   food: alm),
 FoodAmount.new(quantity: 0.5, food: wri),
 FoodAmount.new(quantity: 2,   food: avo)
 ].each do |quantity|
  quantity.save
 end

[Grade.new(color: "green",  food: ban, guru: dur),
 Grade.new(color: "red",    food: ban, guru: ben),
 Grade.new(color: "yellow", food: ban, guru: ric),
 Grade.new(color: "yellow", food: app, guru: dur),
 Grade.new(color: "red",    food: app, guru: ben),
 Grade.new(color: "green",  food: app, guru: ric),
 Grade.new(color: "red",    food: oil, guru: dur),
 Grade.new(color: "green",  food: oil, guru: ben),
 Grade.new(color: "yellow", food: oil, guru: ric),
 Grade.new(color: "red",    food: but, guru: dur),
 Grade.new(color: "green",  food: but, guru: ben),
 Grade.new(color: "red",    food: but, guru: ric),
 Grade.new(color: "yellow", food: kal, guru: dur),
 Grade.new(color: "green",  food: kal, guru: ben),
 Grade.new(color: "green",  food: kal, guru: ric),
 Grade.new(color: "red",    food: alm, guru: dur),
 Grade.new(color: "green",  food: alm, guru: ben),
 Grade.new(color: "green",  food: alm, guru: ric),
 Grade.new(color: "green",  food: wri, guru: dur),
 Grade.new(color: "red",    food: wri, guru: ben),
 Grade.new(color: "red",    food: wri, guru: ric),
 Grade.new(color: "red",    food: avo, guru: dur),
 Grade.new(color: "green",  food: avo, guru: ben),
 Grade.new(color: "yellow", food: avo, guru: ric)
 ].each do |grade|
   grade.save
end

