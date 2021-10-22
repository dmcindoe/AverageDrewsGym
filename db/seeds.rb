# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

trainers = Trainer.create(name: 'Mike Muscles', expertise: 'Powerlifing and wieght training')
trainers = Trainer.create(name: 'Anna Jay', expertise: 'Combat Aerobics')
trainers = Trainer.create(name: 'Johny Tsunami', expertise: 'Weight Training')
trainers = Trainer.create(name: 'Chocolate Dream', expertise: 'Long Distance Running')
trainers = Trainer.create(name: 'The Jelena', expertise: 'Yoga, Mediation, and Aerobics')
trainers = Trainer.create(name: 'Dallas Page', expertise: 'Yoga')
trainers = Trainer.create(name: 'Bo Rogan', expertise: 'Combat Sports and General Fitness')

clients = Client.create(name: 'Adam Cole', membership: 'Gold')
clients = Client.create(name: 'John Silver', membership: 'Bronze')
clients = Client.create(name: 'Jungle Boy', membership: 'Bronze')
clients = Client.create(name: 'MJF', membership: 'Gold')
clients = Client.create(name: 'Wardlow', membership: 'Gold')
clients = Client.create(name: 'Darby Allen', membership: 'Silver')
clients = Client.create(name: 'Eddie Kingson', membership: 'Bronze')
clients = Client.create(name: 'Jon Moxley', membership: 'Gold')
clients = Client.create(name: 'Miro Rusev', membership: 'Silver')
clients = Client.create(name: 'Shanna Bazler', membership: 'Silver')
clients = Client.create(name: 'Tia Contay', membership: 'Bronze')
clients = Client.create(name: 'Britt Baker D.M.D.', membership: 'Gold')
clients = Client.create(name: 'Jim Ross', membership: 'Bronze')
clients = Client.create(name: 'Mark Henry', membership: 'Gold')

# users = User.create(name: 'Matt Conncannon', email: 'mconncannon@google.com', password_digest: 'pirateslife')
# users = User.create(name: 'Shawn McIndoe', email: 'smcindoe@google.com', password_digest: 'butcherexpert')
# users = User.create(name: 'Tyler Bate', email: 'tbate@google.com', password_digest: 'bigstrongboy')
# users = User.create(name: 'Mike McIndoe', email: 'mmcindoe@google.com', password_digest: 'managerman')






