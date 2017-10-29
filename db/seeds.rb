# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.create!({name: "Charlie", image_url: "charlie.jpg", team_name: "Thundercats"})
Player.create!({name: "Mac", image_url: "mac.jpg", team_name: "Thundercats"})
Player.create!({name: "Da Maniac", image_url: "da_maniac.jpg", team_name: "Thundercats"})
Player.create!({name: "The Waitress", image_url: "waitress.png", team_name: "Thundercats"})
Player.create!({name: "The Tranny", image_url: "tranny.jpg", team_name: "Thundercats"})

Player.create!({name: "Dennis", image_url: "dennis.jpg", team_name: "Golden Geese"})
Player.create!({name: "Dee", image_url: "dee.jpg", team_name: "Golden Geese"})
Player.create!({name: "Cricket", image_url: "cricket.jpg", team_name: "Golden Geese"})
Player.create!({name: "Maureen Ponderoza", image_url: "maureen_ponderoza.png", team_name: "Golden Geese"})
Player.create!({name: "Old Black Guy", image_url: "old_black_guy.jpg", team_name: "Golden Geese"})

Player.create!({name: "Frank", image_url: "frank.png", team_name: "Franks Master Race"})
Player.create!({name: "Artemis", image_url: "artemis.png", team_name: "Franks Master Race"})
Player.create!({name: "Ryan McPoyle", image_url: "ryan_mcpoyle.png", team_name: "Franks Master Race"})
Player.create!({name: "Bill Ponderoza", image_url: "bill_ponderoza.jpg", team_name: "Franks Master Race"})
Player.create!({name: "Charlie's mom", image_url: "charlies_mom.jpg", team_name: "Franks Master Race"})

Team.create!({id: 3, name: "Thundercats", image_url: "thundercats.png", created_at: "2017-10-28 20:29:18", updated_at: "2017-10-28 21:23:18", game_id: nil})
Team.create!({id: 5, name: "Golden Geese", image_url: "goldengeese.jpg", created_at: "2017-10-28 20:30:41", updated_at: "2017-10-28 20:30:41", game_id: nil})
Team.create!({id: 6, name: "Franks Master Race", image_url: "franksteam.jpg", created_at: "2017-10-28 20:31:10", updated_at: "2017-10-28 20:31:10", game_id: nil})
