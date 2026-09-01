namespace :users do
  desc "Populate birth_place with random plaec"
  task populate_birth_places: :environment do
    birth_places = ["Tokyo", "Shimane", "New York", "London"]
    User.find_each do |user|
      user.update_columns(birth_place: birth_places.sample)
    end
    puts "Birth place populated for all users."
  end
end
