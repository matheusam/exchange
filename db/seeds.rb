# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first) sell
Transaction.create(amount: 100, currency: 'dollar', transaction_type: 'sell', total: -100.00, quotation: 3.89, date: '11/12/2018')
Transaction.create(amount: 150, currency: 'real', transaction_type: 'buy', total: 37.50, quotation: 3.89, date: '11/12/2018')
