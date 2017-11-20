# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Membership.create(user: User.first, house: House.create(name: 'test', address: 'japan'), main:true)
