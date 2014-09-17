# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Loan.create(id: 1, principal: 100.00, interest_rate: 70.025)
Loan.create(id: 2, principal: 30.00, interest_rate: 0.025)
Loan.create(id: 3, principal: 100000.00, interest_rate: 4.25)
Payment.create(loan_id: 1, date: "01/06/2016", amount: 300.00, successful: nil)
Payment.create(loan_id: 2, date: "01/06/2016", amount: 200.00, successful: true)

