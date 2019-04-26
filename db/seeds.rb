require 'faker'

def seed_users()
  User.create(username: "jekka", name: "jessica", password: "cats", email: "jessiaannbettsis@gmail.com", zip:98010)
  20.times do
    name = Faker::Name.name
    zip = Faker::Address.zip
    email = Faker::Internet.email
    password = Faker::Games::Pokemon.name
    username = Faker::TvShows::GameOfThrones.character
    bio = Faker::Hipster.paragraph(4)
    image = Faker::Avatar.image
    User.create(username: username, name: name, password: password, email: email, zip: zip, bio: bio, image: image)
  end
end

def seed_stores()
  10.times do
    name = Faker::Company.name
    zip = Faker::Address.zip
    city = Faker::Address.city
    state = Faker::Address.state
    street = Faker::Address.street_address
    phone = Faker::PhoneNumber.phone_number
    Store.create(name: name, zip: zip, city: city, state: state, street: street, phone_number: phone)
  end
end

def seed_finds
  User.all.each do |user|
    3.times do
      user_id = user.id
      store_id = Store.all.sample().id
      price = Faker::Commerce.price
      description = Faker::Commerce.product_name
      brand = Faker::Hipster.word
      Find.create(user_id: user_id, store_id: store_id, price: price, description: description, brand: brand, photo: "https://media.kohlsimg.com/is/image/kohls/436526_Optic_White?wid=350&hei=350&op_sharpen=1")
    end
  end

end

def seed_likes
  User.all.each do |user|
    4.times do
      find_id = Find.all.sample().id
      Like.create(user_id: user.id, find_id: find_id)
    end
  end
end

seed_users()
seed_stores()
seed_finds()
seed_likes()
