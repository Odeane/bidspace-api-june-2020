Listing.destroy_all
User.destroy_all

user = User.create(email: 'user@mail.com', password: 'password')
subscriber = User.create(email: 'subscriber@mail.com', password: 'password')

free_listing_1 = Listing.create(
  category: 'Parking spot',
  lead: 'Takes less than 1 minute to get the metro',
  scene: 'outdoor',
  description: 'Curabitur aliquet quam id dui posuere blandit.' * 3,
  address: 'Björcksgatan 37 B416 52 Göteborg'
  price: '50'
  landlord_id: landlord.id
)
file = URI.open('https://www.quickanddirtytips.com/sites/default/files/images/12186/Parking-Lot-of-deas.jpg')
free_listing_1.image.attach(io: file, filename: 'first.jpg')

free_listing_1 = Listing.create(
  category: 'Parking spot',
  lead: 'Safe area and easy access',
  scene: 'outdoor',
  description: 'Proin eget tortor risus. Curabitur aliquet quam id dui posuere blandit.' * 3,
  address: 'Högbergsgatan 21116 20 Stockholm'
  price: '80'
  landlord_id: landlord.id
)
file = URI.open('https://www.pymnts.com/wp-content/uploads/2018/03/parkingspot.jpg')
free_listing_2.image.attach(io: file, filename: 'second.jpg')

free_listing_3 = Listing.create(
  category: 'Parking spot',
  lead: 'Close to the city center',
  scene: 'outdoor',
  description: 'Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.' * 3,
  address: 'Settergatan 14115 48 Stockholm'
  price: '100'
  landlord_id: landlord.id
)
file = URI.open('https://parkeasier.com/wp-content/uploads/2014/12/Homepage_Find_a_Spot_section2.jpg')
free_listing_3.image.attach(io: file, filename: 'third.jpg')