# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    Recipe.destroy_all
    Ingredient.destroy_all

    10.times do 
        Recipe.create(title: Faker::Food.dish)
    end 

    10.times do 
        Ingredient.create(name: Faker::Food.ingredient, quantity: Faker::Food.metric_measurement, recipe_id: Recipe.all.sample.id)
    end 