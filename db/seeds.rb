Listing.destroy_all
User.destroy_all

user = User.create(email: 'user@mail.com', password: 'password', role:'registered')
subscriber = User.create(email: 'subscriber@mail.com', password: 'password', role:'subscriber')

free_listing_1 = Listing.create(
  category: 'Parking spot',
  lead: 'Takes less than 1 minute to get the metro',
  scene: 'outdoor',
  description: 'Curabitur aliquet quam id dui posuere blandit.' * 3,
  address: 'Björcksgatan 37B 41652 Göteborg',
  price: '50',
  landlord_id: user.id
)
file = URI.open('https://images.unsplash.com/photo-1600542431895-dfe1c68eb1c5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80')
free_listing_1.images.attach(io: file, filename: 'first.jpg')
file = URI.open('https://images.unsplash.com/photo-1585360144219-236e7fc8e17b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
free_listing_1.images.attach(io: file, filename: 'forth.jpg')

free_listing_2 = Listing.create(
  category: 'Parking spot',
  lead: 'Safe area and easy access',
  scene: 'outdoor',
  description: 'Proin eget tortor risus. Curabitur aliquet quam id dui posuere blandit.' * 3,
  address: 'Högbergsgatan 21 11620 Stockholm',
  price: '80',
  landlord_id: user.id
)
file = URI.open('https://images.unsplash.com/photo-1580066620217-c9353ec0f476?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
free_listing_2.images.attach(io: file, filename: 'second.jpg')
file = URI.open('https://images.unsplash.com/photo-1580137331426-c28eb6be023b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1267&q=80')
free_listing_2.images.attach(io: file, filename: 'forth.jpg')

free_listing_3 = Listing.create(
  category: 'Parking spot',
  lead: 'Close to the city center',
  scene: 'outdoor',
  description: 'Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.' * 3,
  address: 'Settergatan 14 11548 Stockholm',
  price: '100',
  landlord_id: subscriber.id
)
file = URI.open('https://images.unsplash.com/photo-1526626607369-f89fe1ed77a9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
free_listing_3.images.attach(io: file, filename: 'third.jpg')
file = URI.open('https://images.unsplash.com/photo-1587409201075-7ffa985e9d2d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1363&q=80')
free_listing_3.images.attach(io: file, filename: 'forth.jpg')