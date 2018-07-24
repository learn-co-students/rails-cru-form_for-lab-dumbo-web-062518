# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Genre.destroy_all
Song.destroy_all

Artist.create(name: "Poseidon", bio: "Life of a Kot Son")
Genre.create(name: "Kot Tunes")
Song.create(name: "Living Dat Kot Life", artist_id: 1, genre_id: 1)
Song.create(name: "My Dog Bro", artist_id: 1, genre_id: 1)