user = User.first || User.create!(username: "testuser", email: "test@example.com", password: "password")

Ad.create!([
  {
    title: "Szukam używanego roweru górskiego",
    description: "Potrzebuję solidnego roweru na dojazdy do pracy, najlepiej używany.",
    budget: 800,
    location: "Warszawa",
    category: "Sport",
    contact_method: "email",
    ad_type: "szukam",
    status: "active",
    published_at: Time.now,
    user: user
  },
  {
    title: "Oddam kanapę w dobrym stanie",
    description: "Kanapa 3-osobowa, lekko zużyta, ale wygodna. Odbiór osobisty.",
    budget: 0,
    location: "Kraków",
    category: "Meble",
    contact_method: "telefon",
    ad_type: "oferuję",
    status: "active",
    published_at: Time.now,
    user: user
  },
  {
    title: "Szukam korepetytora z matematyki",
    description: "Potrzebuję korepetycji dla ucznia 8 klasy podstawówki, 2x w tygodniu.",
    budget: 50,
    location: "Gdańsk",
    category: "Edukacja",
    contact_method: "email",
    ad_type: "szukam",
    status: "active",
    published_at: Time.now,
    user: user
  },
  {
    title: "Sprzedam hulajnogę elektryczną",
    description: "Używana, ale na gwarancji. 25 km/h, idealna do miasta.",
    budget: 1200,
    location: "Wrocław",
    category: "Elektronika",
    contact_method: "email",
    ad_type: "oferuję",
    status: "active",
    published_at: Time.now,
    user: user
  }
])
