# m = Movie.find_by(title: '')
# d = Director.find_by(name: '')
# g = Genre.find_by(name: '')
# # a = Actor.find_by(name: '')
# # m.main_actor_id
# m.genre_id = g.id
# m.director_id = d.id
# m.save

# puts "#{m.title} #{m.director_id} #{d.name}"




# Avatar (2009)
# Action
# James Cameron
#  Sam Worthington, Zoe Saldana,




# Les Miserables (2012)
# Musical
# Tom Hooper
# Hugh Jackman, Russell Crowe

# Forrest Gump (1994)
# Romance
# Director: Robert Zemeckis
# Stars: Tom Hanks, Robin Wright


# Titanic (1997)
# Romance 
# Director: James Cameron
# Stars: Leonardo DiCaprio, Kate Winslet


# Frozen (2013)
# Animation
# Chris Buck, Jennifer Lee
# Kristen Bell, Josh Gad


# Braveheart (1995)
# Drama
# Mel Gibson
# Mel Gibson, Sophie Marceau


# The Shawshank Redemption (1994) 
# Drama
# Frank Darabont
# Tim Robbins, Morgan Freeman


# Jurassic Park (1993)
# Adventure 
# Steven Spielberg
# Sam Neill, Laura Dern,


# Saving Private Ryan (1998)
# war
# Steven Spielberg
# Tom Hanks, Matt Damon,


# Monsters, Inc. (2001)
# Animation
# Directors: Pete Docter
# Stars: Billy Crystal, John Goodman


# Lincoln (2012)
# Biography
# Director: Steven Spielberg
# Stars: Daniel Day-Lewis,


# Apollo 13 (1995)
# History
# Director: Ron Howard
# Stars: Tom Hanks,


    # t.string   "title"
    # t.integer  "year"
    # t.text     "plot"
    # t.string   "image_url"
    # t.string   "trailer_url"
    
    # t.integer  "director_id"
    # t.integer  "genre_id"


#-------------------------------------------------------------
puts "populate movie table"
#-------------------------------------------------------------

all_movie_data = [ { :title => "Apollo 13",
                 :year => 1995,
                 :plot => "Three astronauts must devise a strategy to return to Earth safely after their spacecraft undergoes massive internal damage.",
                 :image_url => "http://upload.wikimedia.org/wikipedia/en/9/9e/Apollo_thirteen_movie.jpg",
                 :trailer_url => "http://www.youtube.com/embed/nEl0NsYn1fU"
                },
                { :title => "Lincoln",
                  :year => 2012,
                  :plot => "As the Civil War continues to rage, America's president struggles with continuing carnage on the battlefield and as he fights with many inside his own cabinet on the decision to emancipate the slaves.",
                  :image_url => "http://upload.wikimedia.org/wikipedia/en/6/6a/Lincoln_2012_Teaser_Poster.jpg",
                  :trailer_url =>  "http://www.youtube.com/embed/qiSAbAuLhqs"               
                },              
                { :title => "Monsters, Inc.",
                  :year => 2001,
                  :plot => "Monsters generate their city's power by scaring children, but they are terribly afraid themselves of being contaminated by children, so when one enters Monstropolis, top scarer Sulley finds his world disrupted.",
                  :image_url => "http://upload.wikimedia.org/wikipedia/en/6/6a/Lincoln_2012_Teaser_Poster.jpg",
                  :trailer_url => "http://www.youtube.com/embed/8IBNZ6O2kMk"                
                },
                { :title => "Frozen",
                 :year => 2013,
                 :plot => "Fearless optimist Anna teams up with Kristoff in an epic journey, encountering Everest-like conditions, and a hilarious snowman named Olaf in a race to find Anna's sister Elsa, whose icy powers have trapped the kingdom in eternal winter.",
                 :image_url => "http://upload.wikimedia.org/wikipedia/en/0/05/Frozen_%282013_film%29_poster.jpg",
                 :trailer_url => "http://www.youtube.com/embed/TbQm5doF_Uc"
                },
                { :title => "Braveheart",
                 :year => 1995,
                 :plot => "When his secret bride is executed for assaulting an English soldier who tried to rape her, a commoner begins a revolt and leads Scottish warriors against the cruel English tyrant who rules Scotland with an iron fist.",
                 :image_url => "http://imgc.allpostersimages.com/images/P-473-488-90/56/5665/TL1UG00Z/posters/braveheart.jpg",
                 :trailer_url => "http://www.youtube.com/embed/j53_WxqPZ7c"
                },
                { :title => "The Shawshank Redemption",
                 :year => 1994,
                 :plot => "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
                 :image_url => "http://imgc.allpostersimages.com/images/P-473-488-90/65/6570/CR82100Z/posters/the-shawshank-redemption-standing-in-rain.jpg",
                 :trailer_url => "http://www.youtube.com/embed/NmzuHjWmXOc"
                },
                { :title => "Jurassic Park",
                 :year => 1993,
                 :plot => "During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.",
                 :image_url => "http://imgc.allpostersimages.com/images/P-473-488-90/71/7105/X2VV100Z/posters/jurassic-park-3d-movie-poster.jpg",
                 :trailer_url => "http://www.youtube.com/embed/hke5SxKzkbc"
                },
                { :title => "Saving Private Ryan",
                 :year => 1998,
                 :plot => "Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action",
                 :image_url => "http://imgc.allpostersimages.com/images/P-473-488-90/56/5664/PF1UG00Z/posters/saving-private-ryan.jpg",
                 :trailer_url => "http://www.youtube.com/embed/zwhP5b4tD6g"
                },
                { :title => "Avatar",
                 :year => 2009,
                 :plot => "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
                 :image_url => "http://upload.wikimedia.org/wikipedia/en/b/b0/Avatar-Teaser-Poster.jpg",
                 :trailer_url => "http://www.youtube.com/embed/5PSNL1qE6VY"
                },
                { :title => "Les Miserables",
                 :year => 2012,
                 :plot => "In 19th-century France, Jean Valjean, who for decades has been hunted by the ruthless policeman Javert after breaking parole, agrees to care for a factory worker's daughter. The decision changes their lives for ever.",
                 :image_url => "http://upload.wikimedia.org/wikipedia/en/b/b0/Les-miserables-movie-poster1.jpg",
                 :trailer_url => "http://www.youtube.com/embed/IuEFm84s4oI"
                },
                { :title => "Forrest Gump",
                 :year => 1994,
                 :plot => "Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.",
                 :image_url => "http://upload.wikimedia.org/wikipedia/en/6/67/Forrest_Gump_poster.jpg",
                 :trailer_url => "http://www.youtube.com/embed/bLvqoHBptjg"
                },
                { :title => "Titanic",
                 :year => 1997,
                 :plot => "A seventeen-year-old aristocrat, expecting to be married to a rich claimant by her mother, falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.",
                 :image_url => "http://upload.wikimedia.org/wikipedia/en/2/22/Titanic_poster.jpg",
                 :trailer_url => "http://www.youtube.com/embed/zCy5WQ9S4c0"
                },

            ]

Movie.destroy_all
all_movie_data.each do |movie_info|
  m = Movie.new
  m.title = movie_info[:title]
  m.year = movie_info[:year]
  m.plot = movie_info[:plot]
  m.image_url = movie_info[:image_url]
  m.trailer_url = movie_info[:trailer_url]
  m.save
end

#-------------------------------------------------------------
puts "populate director table"
#-------------------------------------------------------------


all_director_data = [ 
                  { name: "Ron Howard", photo_url: 'http://ia.media-imdb.com/images/M/MV5BMTkzMDczMjUxNF5BMl5BanBnXkFtZTcwODY1Njk5Mg@@._V1_SX214_CR0,0,214,317_.jpg' },
                  { name: "Steven Spielberg", photo_url: 'http://ia.media-imdb.com/images/M/MV5BMTY1NjAzNzE1MV5BMl5BanBnXkFtZTYwNTk0ODc0._V1_SX214_CR0,0,214,317_.jpg' },
                  { name: "James Cameron", photo_url: 'http://upload.wikimedia.org/wikipedia/commons/8/86/JamesCameronCCJuly09.jpg' },
                  { name: "Tom Hooper", photo_url: 'http://upload.wikimedia.org/wikipedia/commons/e/ec/TomHopper10TIFF.jpg' },
                  { name: "Robert Zemeckis", photo_url: 'http://upload.wikimedia.org/wikipedia/commons/e/e9/Robert_Zemeckis_by_David_Shankbone.jpg' },
                  { name: "Chris Buck", photo_url: 'http://upload.wikimedia.org/wikipedia/commons/1/14/Chris_Buck%2C_Frozen_premiere%2C_2013.jpg' },
                  { name: "Mel Gibson", photo_url: 'http://upload.wikimedia.org/wikipedia/commons/3/3c/Mel_Gibson_Cannes_2011_-_2.jpg' },
                  { name: "Frank Darabont", photo_url: 'http://upload.wikimedia.org/wikipedia/commons/1/19/Frank_Darabont_at_the_PaleyFest_2011_-_The_Walking_Dead_panel.jpg' },
                  { name: "Pete Docter", photo_url: 'http://upload.wikimedia.org/wikipedia/commons/f/fd/Pete_Docter_cropped_2009.jpg' }
                ]

Director.destroy_all
all_director_data.each do |director_info|
  Director.create(:name => director_info[:name], :photo_url => director_info[:photo_url])
end


#-------------------------------------------------------------
puts "populate genre table"
#-------------------------------------------------------------

all_genre_data = [ { :name => "Action"},
                { :name => "Musical"},
                { :name => "Romance"},
                { :name => "Animation"},
                { :name => "Drama"},
                { :name => "Adventure"},
                { :name => "War"},
                { :name => "Biography"},
                { :name => "History"}
              ]

Genre.destroy_all
all_genre_data.each do |genre_info|
  m = Genre.new
  m.name = genre_info[:name]
  m.save
  puts "#{m.name}"
end

#-------------------------------------------------------------
puts "populate actor table"
#-------------------------------------------------------------

all_actor_data = [ { name: "Sam Worthington",  photo_url: 'http://ia.media-imdb.com/images/M/MV5BMTc5NTMyMjIwMV5BMl5BanBnXkFtZTcwNTMyNjYwMw@@._V1_SY317_CR6,0,214,317_.jpg'},
                { name: "Hugh Jackman",  photo_url: 'http://ia.media-imdb.com/images/M/MV5BNDExMzIzNjk3Nl5BMl5BanBnXkFtZTcwOTE4NDU5OA@@._V1_SX214_CR0,0,214,317_.jpg'},                
                { name: "Tom Hanks",  photo_url: 'http://ia.media-imdb.com/images/M/MV5BMTQ2MjMwNDA3Nl5BMl5BanBnXkFtZTcwMTA2NDY3NQ@@._V1_SY317_CR2,0,214,317_.jpg'},
                { name: "Leonardo DiCaprio",  photo_url: 'http://ia.media-imdb.com/images/M/MV5BMjI0MTg3MzI0M15BMl5BanBnXkFtZTcwMzQyODU2Mw@@._V1_SY317_CR10,0,214,317_.jpg'},
                { name: "Kristen Bell",  photo_url: 'http://ia.media-imdb.com/images/M/MV5BNTQ2NjU5NTE4N15BMl5BanBnXkFtZTcwNDExNDk1Mw@@._V1_SY317_CR47,0,214,317_.jpg'},
                { name: "Mel Gibson",  photo_url: 'http://ia.media-imdb.com/images/M/MV5BNTUzOTMwNTM0OV5BMl5BanBnXkFtZTcwNDQwMTUxMw@@._V1_SY317_CR8,0,214,317_.jpg'},
                { name: "Tim Robbins",  photo_url: 'http://ia.media-imdb.com/images/M/MV5BMTI1OTYxNzAxOF5BMl5BanBnXkFtZTYwNTE5ODI4._V1_SY317_CR16,0,214,317_.jpg'},
                { name: "Sam Neill",  photo_url: 'http://ia.media-imdb.com/images/M/MV5BMTQxNjY1OTA1NF5BMl5BanBnXkFtZTcwNTcxMTAzNQ@@._V1_SY317_CR25,0,214,317_.jpg'},
                { name: "Billy Crystal",  photo_url: 'http://ia.media-imdb.com/images/M/MV5BMTQ4MjA4MjM4NV5BMl5BanBnXkFtZTcwMzE0MjcxNQ@@._V1_SY317_CR10,0,214,317_.jpg'},
                { name: "Daniel Day-Lewis",  photo_url: 'http://ia.media-imdb.com/images/M/MV5BMjE2NDY2NDc1Ml5BMl5BanBnXkFtZTcwNjAyMjkwOQ@@._V1_SY317_CR13,0,214,317_.jpg'}
              ]
Actor.destroy_all
all_actor_data.each do |actor_info|
  m = Actor.new
  m.name = actor_info[:name]
  m.photo_url = actor_info[:photo_url]
  m.save
  puts "#{m.name}"
end


#-------------------------------------------------------------
puts "populate Role table with movie & actor matching info"
#-------------------------------------------------------------

Role.destroy_all

m = Movie.find_by(title: 'Avatar')
a = Actor.find_by(name: 'Sam Worthington')
r = Role.new
r.movie_id = m.id
r.actor_id = a.id
r.save
puts "#{m.title} role populated"

m = Movie.find_by(title: 'Les Miserables')
a = Actor.find_by(name: 'Hugh Jackman')
r = Role.new
r.movie_id = m.id
r.actor_id = a.id
r.save
puts "#{m.title} role populated"

m = Movie.find_by(title: 'Forrest Gump')
a = Actor.find_by(name: 'Tom Hanks')
r = Role.new
r.movie_id = m.id
r.actor_id = a.id
r.save
puts "#{m.title} role populated"

m = Movie.find_by(title: 'Titanic')
a = Actor.find_by(name: 'Leonardo DiCaprio')
r = Role.new
r.movie_id = m.id
r.actor_id = a.id
r.save
puts "#{m.title} role populated"

m = Movie.find_by(title: 'Frozen')
a = Actor.find_by(name: 'Kristen Bell')
r = Role.new
r.movie_id = m.id
r.actor_id = a.id
r.save
puts "#{m.title} role populated"

m = Movie.find_by(title: 'Braveheart')
a = Actor.find_by(name: 'Mel Gibson')
r = Role.new
r.movie_id = m.id
r.actor_id = a.id
r.save
puts "#{m.title} role populated"

m = Movie.find_by(title: 'The Shawshank Redemption')
a = Actor.find_by(name: 'Tim Robbins')
r = Role.new
r.movie_id = m.id
r.actor_id = a.id
r.save
puts "#{m.title} role populated"

m = Movie.find_by(title: 'Jurassic Park')
a = Actor.find_by(name: 'Sam Neill')
r = Role.new
r.movie_id = m.id
r.actor_id = a.id
r.save
puts "#{m.title} role populated"

m = Movie.find_by(title: 'Saving Private Ryan')
a = Actor.find_by(name: 'Tom Hanks')
r = Role.new
r.movie_id = m.id
r.actor_id = a.id
r.save
puts "#{m.title} role populated"

m = Movie.find_by(title: 'Monsters, Inc.')
a = Actor.find_by(name: 'Billy Crystal')
r = Role.new
r.movie_id = m.id
r.actor_id = a.id
r.save
puts "#{m.title} role populated"

m = Movie.find_by(title: 'Lincoln')
a = Actor.find_by(name: 'Daniel Day-Lewis')
r = Role.new
r.movie_id = m.id
r.actor_id = a.id
r.save
puts "#{m.title} role populated"

m = Movie.find_by(title: 'Apollo 13')
a = Actor.find_by(name: 'Tom Hanks')
r = Role.new
r.movie_id = m.id
r.actor_id = a.id
r.save
puts "#{m.title} role populated"

#-------------------------------------------------------------
puts "populate movie genre & director IDs"
#-------------------------------------------------------------

m = Movie.find_by(title: 'Apollo 13')
d = Director.find_by(name: 'Ron Howard')
g = Genre.find_by(name: 'History')
# a = Actor.find_by(name: 'Tom Hanks')
# m.main_actor_id
m.genre_id = g.id
m.director_id = d.id
m.save

puts "#{m.title} #{m.director_id} #{d.name}"

m = Movie.find_by(title: 'Lincoln')
d = Director.find_by(name: 'Steven Spielberg')
g = Genre.find_by(name: 'Biography')
# a = Actor.find_by(name: 'Daniel Day-Lewis')
# m.main_actor_id
m.genre_id = g.id
m.director_id = d.id
m.save

puts "#{m.title} #{m.director_id} #{d.name}"

m = Movie.find_by(title: 'Monsters, Inc.')
d = Director.find_by(name: 'Pete Docter')
g = Genre.find_by(name: 'Animation')
# a = Actor.find_by(name: 'Billy Crystal')
# m.main_actor_id
m.genre_id = g.id
m.director_id = d.id
m.save

puts "#{m.title} #{m.director_id} #{d.name}"

m = Movie.find_by(title: 'Saving Private Ryan')
d = Director.find_by(name: 'Steven Spielberg')
g = Genre.find_by(name: 'War')
# a = Actor.find_by(name: 'Tom Hanks')
# m.main_actor_id
m.genre_id = g.id
m.director_id = d.id
m.save

puts "#{m.title} #{m.director_id} #{d.name}"

m = Movie.find_by(title: 'Jurassic Park')
d = Director.find_by(name: 'Steven Spielberg')
g = Genre.find_by(name: 'Adventure')
# a = Actor.find_by(name: 'Sam Neill')
# m.main_actor_id
m.genre_id = g.id
m.director_id = d.id
m.save

puts "#{m.title} #{m.director_id} #{d.name}"

m = Movie.find_by(title: 'The Shawshank Redemption')
d = Director.find_by(name: 'Frank Darabont')
g = Genre.find_by(name: 'Drama')
# a = Actor.find_by(name: 'Tim Robbins')
# m.main_actor_id
m.genre_id = g.id
m.director_id = d.id
m.save

puts "#{m.title} #{m.director_id} #{d.name}"

m = Movie.find_by(title: 'Braveheart')
d = Director.find_by(name: 'Mel Gibson')
g = Genre.find_by(name: 'Drama')
# a = Actor.find_by(name: 'Mel Gibson')
# m.main_actor_id
m.genre_id = g.id
m.director_id = d.id
m.save

puts "#{m.title} #{m.director_id} #{d.name}"

m = Movie.find_by(title: 'Frozen')
d = Director.find_by(name: 'Chris Buck')
g = Genre.find_by(name: 'Animation')
# a = Actor.find_by(name: 'Kristen Bell')
# m.main_actor_id
m.genre_id = g.id
m.director_id = d.id
m.save

puts "#{m.title} #{m.director_id} #{d.name}"

m = Movie.find_by(title: 'Titanic')
d = Director.find_by(name: 'James Cameron')
g = Genre.find_by(name: 'Romance')
# a = Actor.find_by(name: 'Leonardo DiCaprio')
# m.main_actor_id
m.genre_id = g.id
m.director_id = d.id
m.save

puts "#{m.title} #{m.director_id} #{d.name}"

m = Movie.find_by(title: 'Forrest Gump')
d = Director.find_by(name: 'Robert Zemeckis')
g = Genre.find_by(name: 'Romance')
# a = Actor.find_by(name: 'Tom Hanks')
# m.main_actor_id
m.genre_id = g.id
m.director_id = d.id
m.save

puts "#{m.title} #{m.director_id} #{d.name}"

m = Movie.find_by(title: 'Les Miserables')
d = Director.find_by(name: 'Tom Hooper')
g = Genre.find_by(name: 'Musical')
# a = Actor.find_by(name: 'Hugh Jackman')
# m.main_actor_id
m.genre_id = g.id
m.director_id = d.id
m.save

puts "#{m.title} #{m.director_id} #{d.name}"

m = Movie.find_by(title: 'Avatar')
d = Director.find_by(name: 'James Cameron')
g = Genre.find_by(name: 'Action')
# a = Actor.find_by(name: 'Sam Worthington')
# m.main_actor_id
m.genre_id = g.id
m.director_id = d.id
m.save

puts "#{m.title} #{m.director_id} #{d.name}"
