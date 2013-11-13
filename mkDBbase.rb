
dur=Guru.new(name: "Durianrider",    picture_url: "http://www.rawsomehealthy.com/wp-content/uploads/2013/04/durianrider4.jpg")
ben=Guru.new(name: "Ben Greenfield", picture_url: "http://2.bp.blogspot.com/-3EKywKx0KGQ/Ua5nayrYhQI/AAAAAAAAM0c/Pd8mtvnrx_0/s1600/0f7cf524255fe90931186125c4e8bb7c.png")
rich=Guru.new(name: "Rich Roll", picture_url: "http://runmehappy.files.wordpress.com/2013/03/rich-roll-web-bio-image1.jpg")
ban=Food.new(name:"Banana", unit:"1 pcs")
app=Food.new(name:"Apple", unit:"1 pcs")
oil=Food.new(name:"Olive Oil", unit:"100 ml")
but=Food.new(name:"Butter", unit:"100 g")
kal=Food.new(name:"Kale", unit:"1 hg")
alm=Food.new(name:"Almonds", unit:"100 g")
ric=Food.new(name:"White rice, unboiled", unit:"100 ml")
avo=Food.new(name:"Avocado", unit:"1 pcs")

Guru.destroy_all
Food.destroy_all
Grade.destroy_all

[dur, ben, rich,
 ban, app, oil, but, kal, alm, ric, avo].each do |guru|
  guru.save
end
