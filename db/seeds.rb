require 'faker'

#
# def seed_wolfgrrl
#   User.create(username: 'wolfgrrrl', password: 'wolf', email: 'wolfgrrrl@email.com', zip: Faker::Address.zip, bio: 'and i"m howling like a wolffff', image: encoded_string)
#   Find.create(user_id: 0, store_id: Store.all[0], price: 3.49, description: 'Sweet Wolf Crewneck', brand: Gildan, photo: encoded_string)
#
# end


def seed_users_and_finds()
  User.create(username: "jekka", password: "cats", email: "jessiaannbettsis@gmail.com", bio: "i like cats", zip:98010, image: "https://scontent-ort2-2.cdninstagram.com/vp/2caa24e5ad88e58c012a04550cdc8493/5D7082B4/t51.2885-15/e35/52909898_2312312622424463_8539354381621977442_n.jpg?_nc_ht=scontent-ort2-2.cdninstagram.com")
    Find.create(user_id: 0, store_id: Store.all.sample.id, price: 5.99, description: "makes me feel fancy and quirky", brand: "All Week Long", photo: "https://scontent-sea1-1.cdninstagram.com/vp/24c8f6dda7b5f4f5436757d252e5e734/5D680AAF/t51.2885-15/sh0.08/e35/p750x750/59129622_606603019843919_4508561298036745599_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 0, store_id: Store.all.sample.id, price: 5.99, description: "makes me feel fancy and quirky", brand: "All Week Long", photo: "https://scontent-sea1-1.cdninstagram.com/vp/24c8f6dda7b5f4f5436757d252e5e734/5D680AAF/t51.2885-15/sh0.08/e35/p750x750/59129622_606603019843919_4508561298036745599_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 0, store_id: Store.all.sample.id, price: 3.99, description: "super boho summer pants that are thin, breezy and almost look like jammies", brand: "None", photo: "https://scontent-sea1-1.cdninstagram.com/vp/5ce3fc838cc9014558451d9f02786e80/5D685C7E/t51.2885-15/e35/59434574_453899638749110_2538917082199679477_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 0, store_id: Store.all.sample.id, price: 6.99, description: "probably my fav going out top", brand: "Lila Rose", photo: "https://scontent-sea1-1.cdninstagram.com/vp/99cb91fd5a0b5b1b59342d0ac54732c6/5D691AF7/t51.2885-15/sh0.08/e35/p750x750/57561452_2417890888440249_651151278464037694_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")

  User.create(username: "wolfgrrrl", password: "wolf", email: "wolf@email.com", bio: "and i'm hungry like the wolf", zip:34976, image: "https://cdn.pixabay.com/photo/2017/10/22/17/54/wolf-2878633_960_720.jpg")
    Find.create(user_id: 1, store_id: Store.all.sample.id, price: 5.99, description: "I've never seen one with a gypsy before.", brand: "The Mountain", photo: "https://scontent-sea1-1.cdninstagram.com/vp/7e9666945a7e9bad0f7d78bbf2d5fc54/5D74C030/t51.2885-15/e35/57488183_160543894979363_7636990031941816299_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 1, store_id: Store.all.sample.id, price: 3.99, description: "The colors of this one are super cool", brand: "The Mountain", photo: "https://scontent-sea1-1.cdninstagram.com/vp/3470578ade125bc595905b732ca0d479/5D75AAE0/t51.2885-15/e35/59008986_676894469432934_6738172881667686865_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 1, store_id: Store.all.sample.id, price: 4.49, description: "This is where it all began, the first i ever bought!", brand: "The Mountain", photo: "https://scontent-sea1-1.cdninstagram.com/vp/502cf902b60607fe3cef05875ec5dffa/5D54327E/t51.2885-15/e35/58453862_811671159209160_4643941788061127058_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 1, store_id: Store.all.sample.id, price: 3.49, description: "Wolf is the new black, also the sweater is black", brand: "Gildan", photo: "https://scontent-sea1-1.cdninstagram.com/vp/f4736e00a9abd315911b2e0d10714989/5D511C85/t51.2885-15/e35/57987873_351863932201676_1492254271948789501_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")

  User.create(username: "taylors4lyfe", password: "chuck", email: "ctaylor@email.com", bio: "aint no show like a broken in ctay", zip:69002, image: "http://thesource.com/wp-content/uploads/2018/11/carhartt-wip-converse-chuck-taylor-all-star-70-10.jpg")
    Find.create(user_id: 2, store_id: Store.all.sample.id, price: 12.99, description: "I was thinking about buying a brand new pair but decided to wait. Low and behold, these appeared. they are kind of beat up but still good!", brand: "Converse", photo: "https://scontent-sea1-1.cdninstagram.com/vp/bd9782b5af56fb2cbb69249f15853f33/5D74CF75/t51.2885-15/e35/58410007_600092883826193_2786181830749144659_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 2, store_id: Store.all.sample.id, price: 18.99, description: "This color is so fresh", brand: "Converse", photo: "https://scontent-sea1-1.cdninstagram.com/vp/4660c17f0d05de35adcbed8f4bc73dab/5D55C13E/t51.2885-15/sh0.08/e35/s750x750/59395670_373765913238107_4109827233107787611_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")


  User.create(username: "instaBaddie", password: "baddie", email: "tryinghard@yahoo.com", bio: "posin' for pictures, not in life", zip:18873, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSapTXkPttViI0HMMYI24ISrANlGAEDO3Qb9LZ34h40Y_jPKtNf")
    Find.create(user_id: 3, store_id: Store.all.sample.id, price: 3.99, description: "90's kid unite. #millenials", brand: "Nickolodean", photo: "https://scontent-sea1-1.cdninstagram.com/vp/f4736e00a9abd315911b2e0d10714989/5D511C85/t51.2885-15/e35/57987873_351863932201676_1492254271948789501_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 3, store_id: Store.all.sample.id, price: 14.99, description: "pricey for dad shoes, but also they are so trendy i had to have them", brand: "New Balance", photo: "https://scontent-sea1-1.cdninstagram.com/vp/9db492198240320452e888b972518b3e/5D6E1796/t51.2885-15/e35/57583287_681728388947760_1007778568373127221_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 3, store_id: Store.all.sample.id, price: 14.99, description: "when you see 3 stripes, you just buy them", brand: "Adidas", photo: "https://scontent-sea1-1.cdninstagram.com/vp/99212d61f60e604b45123c6b8d23ae24/5D69C19B/t51.2885-15/e35/58454096_150195732690686_6311399176952587711_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 3, store_id: Store.all.sample.id, price: 14.99, description: "super hiP", brand: "Nike", photo: "https://scontent-sea1-1.cdninstagram.com/vp/dc8752d850fe0cb550d25ea8484c7280/5D55F321/t51.2885-15/e35/59671126_2233604033373459_110491067845543422_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 3, store_id: Store.all.sample.id, price: 4.99, description: "the coorderoy is everything", brand: "Lansend", photo: "https://scontent-sea1-1.cdninstagram.com/vp/dc8752d850fe0cb550d25ea8484c7280/5D55F321/t51.2885-15/e35/59671126_2233604033373459_110491067845543422_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 3, store_id: Store.all.sample.id, price: 9.99, description: "i've gotten so many compliments on this", brand: "Lebby Collection", photo: "https://scontent-sea1-1.cdninstagram.com/vp/4364ebea3a4330238321b144194635ff/5D6B7592/t51.2885-15/sh0.08/e35/p750x750/59888017_141011620290247_7821089232727063360_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")

  User.create(username: "denimdenimdenim", password: "denim", email: "denim@mail.com", bio: "A collector of many things, but most just interesting denim", zip:40641, image: "http://morebetterblues.com/wp-content/uploads/2017/08/Pile-of-jeans.jpg")
    Find.create(user_id: 4, store_id: Store.all.sample.id, price: 6.99, description: "Nice pair of boyfriend jeans", brand: "American Eagle", photo: "https://scontent-sea1-1.cdninstagram.com/vp/fa08810693a9541870b47b0b6ea23af6/5D5D58BC/t51.2885-15/e35/58408996_197616721203516_3846144068059455051_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 4, store_id: Store.all.sample.id, price: 18.99, description: "Almost missed this gem. It was hiding at the end of a rack and i couldn't believe how lucky i got!", brand: "American Eagle", photo: "https://scontent-sea1-1.cdninstagram.com/vp/a7470cf84b40812d9d919151ca24ca75/5D75F532/t51.2885-15/sh0.08/e35/s750x750/57284750_2038565719786524_6885945496089590122_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 4, store_id: Store.all.sample.id, price: 5.99, description: "550's Great mom jeans! Love to weat them with a tucked in shirt", brand: "Levi Strauss", photo: "https://scontent-sea1-1.cdninstagram.com/vp/4fbc60dcb30cf258fe7e7a8f1980f81d/5D6394FC/t51.2885-15/e35/57556940_2206887386054444_1068818557335627696_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 4, store_id: Store.all.sample.id, price: 7.99, description: "ANOTHER Levi's jeans find! this time 505's", brand: "Levi Strauss", photo: "https://scontent-sea1-1.cdninstagram.com/vp/de198ebe8cc50baec1e4c3daf213dd2c/5D59C085/t51.2885-15/e35/57602911_124087322112442_7789322517620212178_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")

  User.create(username: "shoe.obsessed", password: "shoe", email: "omgshoes@hotmail.com", bio: "Let's get some shoes, Let's party!", zip:55576, image: "https://media.wmagazine.com/photos/5cc340ca975225755e06205a/4:3/w_1536/Image%2520from%2520iOS%2520(3).jpg")
    Find.create(user_id: 5, store_id: Store.all.sample.id, price: 14.99, description: "The zipper is broken on on shoe but it is still an awesome find! can't wait to fix it and wear these puppy's everywhere! super 90's vintage!", brand: "Guess", photo: "https://scontent-sea1-1.cdninstagram.com/vp/706c81c22f86b6c50033ad65f40ddc27/5D57EFA7/t51.2885-15/e35/59575511_548010375725263_4754110673512704608_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 5, store_id: Store.all.sample.id, price: 18.99, description: "i love the stars on the side. they are a little uncomfortable but too good to pass up!", brand: "Bebe", photo: "https://scontent-sea1-1.cdninstagram.com/vp/055ebfdbb9f93110741c2504f04b0e3f/5D76CC24/t51.2885-15/e35/59427014_329466837761402_119001034647906625_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 5, store_id: Store.all.sample.id, price: 14.99, description: "I had a pair of off brands that were going bad, these look just like it but they are higher quality.", brand: "Steve Madden", photo: "https://scontent-sea1-1.cdninstagram.com/vp/9ff00fc72bca2db86e81f6794b894c20/5D7378A3/t51.2885-15/e35/58410209_399061110940191_9018399350017633115_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 5, store_id: Store.all.sample.id, price: 10.99, description: "Great pair of over the knees, only uncomfortable around the ankle with the laces diggin in", brand: "Forever 21", photo: "https://scontent-sea1-1.cdninstagram.com/vp/c6ed8069e69943f4c931ef9a35eec5c0/5D5841B5/t51.2885-15/e35/58411005_438504183643796_1952492697101644208_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")

  User.create(username: "Avg Joesphine", password: "average", email: "avgjoe@aol.com", bio: "Livin' my truth", zip:229086, image: "https://i.pinimg.com/originals/19/dd/cb/19ddcba319c74d5b7f41c009df7b6a31.jpg")
    Find.create(user_id: 6, store_id: Store.all.sample.id, price: 4.99, description: "So cute. So comfy.", brand: "The Disney Store", photo: "https://scontent-sea1-1.cdninstagram.com/vp/af6cefe1e8d335b51669afb36269d72a/5D6445CA/t51.2885-15/e35/57978707_2378148232421883_1199257734344391758_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
    Find.create(user_id: 6, store_id: Store.all.sample.id, price: 13.99, description: "Love the metal string detailing", brand: "Puma", photo: "https://scontent-sea1-1.cdninstagram.com/vp/dc42af1b12fe37ab9ae1d2108c22dc0f/5D6ADE5B/t51.2885-15/e35/59470140_487942148411544_1045977029148789926_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com")
end

def seed_stores()
  store_names = ['Goodwill', 'Platos Closet', 'Value Village', 'Savers', 'St.Vincent Depaul', 'Buffalo Exchange']
  10.times do
    name = store_names.sample
    zip = Faker::Address.zip
    city = Faker::Address.city
    state = Faker::Address.state
    street = Faker::Address.street_address
    phone = Faker::PhoneNumber.phone_number
    Store.create(name: name, zip: zip, city: city, state: state, street: street, phone_number: phone)
  end
end


def seed_likes
  User.all.each do |user|
    rand(6).times do
      find_id = Find.all.sample().id
      Like.create(user_id: user.id, find_id: find_id)
    end
  end
end

seed_stores()
seed_users_and_finds()
seed_likes()
