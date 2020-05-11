require "i18n"
I18n.config.available_locales = :en
# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating words ...'

Word.destroy_all
# Word.create!(word:'abruti', available: true)
File.foreach("db/liste_francais.txt") do |line|
  word = I18n.transliterate(line)
  Word.create!(word: word.chomp.downcase, available: true)
end

puts 'Creating words ended !'
