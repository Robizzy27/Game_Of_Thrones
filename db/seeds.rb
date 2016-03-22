# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Character.destroy_all
House.destroy_all
Region.destroy_all
King.destroy_all

robb = King.create(name: "Robb Stark", image: "robb-stark.jpg")
joffrey = King.create(name: "Joffrey Baratheon", image: "joffrey-baratheon.jpg")
balon = King.create(name: "Balon Greyjoy", image: "balon-greyjoy.jpg")
daenerys = King.create(name: "Daenerys Targaryen", image: "daenerys-targaryen.jpg")
stannis = King.create(name: "Stannis Baratheon", image: "stannis-baratheon.jpg")

north = Region.create(name: "The North", image: "north.jpg", king: robb)
vale = Region.create(name: "The Vale", image: "vale.jpg", king: robb)
riverland = Region.create(name: "Riverlands", image: "riverlands.jpg", king: robb)
ironisland = Region.create(name: "Iron Islands", image: "ironislands.jpg", king: balon)
stormlands = Region.create(name: "Storm Lands", image: "stormlands.jpg", king: stannis)
dorne = Region.create(name: "Dorne", image: "dorne.jpg", king: joffrey)
crownlands = Region.create(name: "Crown Lands", image: "crownlands.jpg", king: daenerys)
westerlands = Region.create(name: "Westerlands", image: "westerlands.jpg", king: joffrey)

arryn = House.create(name: "Arryn", image: "sigilArryn.jpg", region: vale)
baratheon = House.create(name: "Baratheon", image: "sigilBaratheon.jpg", region: stormlands)
greyjoy = House.create(name: "Greyjoy", image: "sigilGreyjoy.jpg", region: ironisland)
lannister = House.create(name: "Lannister", image: "sigilLannister.jpg", region: westerlands)
stark = House.create(name: "Stark", image: "sigilStark.jpg", region: north)
targaryen = House.create(name: "Targaryen", image: "sigilTargaryen.jpg", region: crownlands)
tully = House.create(name: "Tully", image: "sigilTully.jpg", region: riverland)
martell = House.create(name: "Martell", image: "sigilMartell.jpg", region: dorne)

eddard = Character.create(name: "Eddard Stark", house: stark, image: "ned-stark.jpg")
catelyn = Character.create(name: "Catelyn Tully", house: stark, image: "catelyn-stark.jpg")
snow = Character.create(name: "John Snow", house: stark, image: "jon-snow.jpg")
sansa = Character.create(name: "Sansa Stark", house: stark, image: "sansa-stark.jpg")
arya = Character.create(name: "Arya Stark", house: stark, image: "arya-stark.jpg")
bran = Character.create(name: "Bran Stark", house: stark, image: "bran-stark.jpg")
edmure = Character.create(name: "Edmure Tully", house: tully, image: "edmure-tully.jpg")
lysa = Character.create(name: "Lysa Tully", house: arryn, image: "lysa-arryn.jpg")
renly = Character.create(name: "Renly Baratheon", house: baratheon, image: "renly-baratheon.jpg")
theon = Character.create(name: "Theon Greyjoy", house: greyjoy, image: "theon-greyjoy.jpg")
tyrion = Character.create(name: "Tyrion", house: lannister, image: "tyrion-lannister.jpg")
cersei = Character.create(name: "Cersei Lannister", house: lannister, image: "cersei-lannister.jpg")
jamie = Character.create(name: "Jamie Lannister", house: lannister, image: "jamie-lannister.jpg")
viserys = Character.create(name: "Viserys Targaryen", house: targaryen, image: "viserys-targaryen.jpg")
oberyn = Character.create(name: "Oberyn Martell", house: martell, image: "oberyn-martell.jpg")





# king.regions << region
# region.houses  << house
# house.characters << character

# puts "It succeeded!!!\n\n" if king.save
