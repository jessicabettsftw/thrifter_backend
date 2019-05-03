require 'faker'





def seed_users()
  User.create(username: "jekka", password: "cats", email: "jessiaannbettsis@gmail.com", zip:98010, image: "https://scontent-ort2-2.cdninstagram.com/vp/2caa24e5ad88e58c012a04550cdc8493/5D7082B4/t51.2885-15/e35/52909898_2312312622424463_8539354381621977442_n.jpg?_nc_ht=scontent-ort2-2.cdninstagram.com")
  20.times do
    zip = Faker::Address.zip
    email = Faker::Internet.email
    password = Faker::Games::Pokemon.name
    username = Faker::TvShows::GameOfThrones.character
    bio = Faker::Hipster.paragraph(4)
    image = Faker::Avatar.image
    User.create(username: username, password: password, email: email, zip: zip, bio: bio, image: image)
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
  photos = ["https://scontent-ort2-2.cdninstagram.com/vp/c5c260a059532ef835a838ae35efef35/5D53C072/t51.2885-15/e35/21480386_201105413760825_914829013300543488_n.jpg?_nc_ht=scontent-ort2-2.cdninstagram.com",
            "https://scontent-ort2-2.cdninstagram.com/vp/c5c260a059532ef835a838ae35efef35/5D53C072/t51.2885-15/e35/21480386_201105413760825_914829013300543488_n.jpg?_nc_ht=scontent-ort2-2.cdninstagram.com",
            "https://scontent-ort2-2.cdninstagram.com/vp/f7857d4697d65a67ea9b2973711d2de6/5D66C728/t51.2885-15/sh0.08/e35/s750x750/14607155_1796445527239429_6043105739516411904_n.jpg?_nc_ht=scontent-ort2-2.cdninstagram.com",
            "https://scontent-ort2-2.cdninstagram.com/vp/ee4cb59cef065bed3a18a2446a9527e3/5D6136BE/t51.2885-15/sh0.08/e35/s750x750/15623670_1898630643743023_4039749803716902912_n.jpg?_nc_ht=scontent-ort2-2.cdninstagram.com",
            "https://scontent-ort2-2.cdninstagram.com/vp/9fd27b0caf3f08c55abd83b0f5ae7f09/5D5EBFDB/t51.2885-15/sh0.08/e35/s750x750/15403310_1284350714964714_74176490383605760_n.jpg?_nc_ht=scontent-ort2-2.cdninstagram.com",
            "https://scontent-ort2-2.cdninstagram.com/vp/ff3d8796ba3c33b1c913f20b19bfe897/5D648BD2/t51.2885-15/e15/15624852_1073062352804536_2132317744815669248_n.jpg?_nc_ht=scontent-ort2-2.cdninstagram.com",
            "https://scontent-ort2-2.cdninstagram.com/vp/64c497dc13c2681081df1b78a390d581/5D547FC3/t51.2885-15/sh0.08/e35/s750x750/16907996_1830773797161794_8038685117335470080_n.jpg?_nc_ht=scontent-ort2-2.cdninstagram.com",
            "https://scontent-ort2-2.cdninstagram.com/vp/87b141e9911823828a0aaa682bd702e9/5D53E97B/t51.2885-15/e35/42344242_163717617884461_6176240344313600413_n.jpg?_nc_ht=scontent-ort2-2.cdninstagram.com",
            "https://scontent-ort2-2.cdninstagram.com/vp/7941514e1803177dd350ca12877bf667/5D656F7B/t51.2885-15/sh0.08/e35/p750x750/22793852_147184839347508_1787459070974754816_n.jpg?_nc_ht=scontent-ort2-2.cdninstagram.com"]

  User.all.each do |user|
    3.times do
      user_id = user.id
      store_id = Store.all.sample().id
      price = Faker::Commerce.price
      description = Faker::Commerce.product_name
      photo = photos.sample
      brand = Faker::Hipster.word
      Find.create(user_id: user_id, store_id: store_id, price: price, description: description, brand: brand, photo: photo)
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
