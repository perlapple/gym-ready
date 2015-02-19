# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  muscles = ["Traps", "Shoulders", "Biceps", "Triceps", "Forearms", "Chest",
    "Back", "Lats", "Abs", "Legs", "Glutes", "Quadriceps", "Hamstrings", "Calves"]
  muscles.each do |muscle|
    muscle_group = MuscleGroup.create [ name: muscle ]
  end