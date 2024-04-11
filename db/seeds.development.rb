#this file should be used only for agregation data in the database of development enviroment
#Project.create(name: "app to fiis unas ",description: "una app de prueba")
require 'json'
require 'faker'

# Lista de lenguajes de programación
programming_languages = [
  "Ruby", "Python", "JavaScript", "Java", "C++", "C#", "PHP", "Swift", "TypeScript", "Go", "Rust", "Kotlin", "Scala", "Haskell", "Perl", "Objective-C", "Ruby on Rails"
]

10.times do
  project = Project.new(
    name: Faker::App.name,
    description: Faker::Lorem.paragraph,
    technologies: programming_languages.sample(3),
    )
  project.save
end