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

rob = King.create(name: 'Rob Stark')
joffrey = King.create(name: 'Joffrey Baratheon')
balon = King.create(name: 'Balon Greyjoy')
daenerys = King.create(name: 'Daenerys Targaryen')
stannis = King.create(name: 'Stannis Baratheon')

north = Region.create(name: "The North", king: rob)
vale = Region.create(name: "The Vale", king: rob)
riverland = Region.create(name: "Riverlands", king: rob)
ironisland = Region.create(name: "Iron Islands", king: balon)
reach = Region.create(name: "The Reach", king: joffrey)
stormlands = Region.create(name: "The Storm Lands", king: stannis)
dorne = Region.create(name: "Dorne", king: joffrey)
crownlands = Region.create(name: "Crown Lands", king: daenerys)
westerlands = Region.create(name: "Westerlands", king: joffrey)

arryn = House.create(name: "Arryn", image: "arryn.jpg", region: vale)
baratheon = House.create(name: "Baratheon", image: "baratheon.jpg", region: stormlands)
greyjoy = House.create(name: "Greyjoy", image: "greyjoy.jpg", region: ironisland)
lannister = House.create(name: "Lannister", image: "lannister.jpg", region: westerlands)
stark = House.create(name: "Stark", image: "stark.jpg", region: north)
targaryen = House.create(name: "Targaryen", image: "targaryen.jpg", region: crownlands)
tully = House.create(name: "Tully", image: "tully.jpg", region: riverland)
tyrell = House.create(name: "Tyrell", image: "tyrell.jpg", region: reach)
martell = House.create(name: "Martell", image: "martell.jpg", region: dorne)

snow = Character.create(name: "John Snow", house: stark, image: "jon-snow.jpg")
eddard = Character.create(name: "Eddard Stark", house: stark, image: "ned-stark.jpg")
arya = Character.create(name: "Arya Stark", house: stark, image: "arya-stark.jpg")
sansa = Character.create(name: "Sansa Stark", house: stark, image: "sansa-stark.jpg")
bran = Character.create(name: "Bran Stark", house: stark, image: "bran-stark.jpg")
edmure = Character.create(name: "Edmure Tully", house: tully, image: "edmure-tully.jpg")
catelyn = Character.create(name: "Catelyn Tully", house: stark, image: "catelyn-stark.jpg")
jon = Character.create(name: "Jon Arryn", house: arryn, image: "arrynphoto.jpg")
renly = Character.create(name: "Renly Baratheon", house: baratheon, image: "renly-baratheon.jpg")
theon = Character.create(name: "Theon Greyjoy", house: greyjoy, image: "theon-greyjoy.jpg")
cersei = Character.create(name: "Cersei Lannister", house: lannister, image: "cersei-lannister.jpg")
jamie = Character.create(name: "Jamie Lannister", house: lannister, image: "jamie-lannister.jpg")
loras = Character.create(name: "Loras Tyrell", house: tyrell, image: "loras-tyrell.jpg")
viserys = Character.create(name: "Viserys Targaryen", house: targaryen, image: "viserys-targaryen.jpg")
oberyn = Character.create(name: "Oberyn Martell", house: martell, image: "oberyn-martell.jpg")
tyrion = Character.create(name: "Tyrion", house: lannister, image: "tyrion-lannister.jpg")





# king.regions << region
# region.houses  << house
# house.characters << character

# puts "It succeeded!!!\n\n" if king.save
