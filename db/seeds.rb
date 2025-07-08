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
    status: "aktualne",
    published_at: 3.days.ago,
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
    status: "aktualne",
    published_at: 1.day.ago,
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
    status: "aktualne",
    published_at: 5.days.ago,
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
    status: "aktualne",
    published_at: 2.days.ago,
    user: user
  },
  {
    title: "Szukam opiekunki do dziecka",
    description: "Szukam doświadczonej opiekunki na popołudnia, praca od zaraz.",
    budget: 25,
    location: "Poznań",
    category: "Usługi",
    contact_method: "telefon",
    ad_type: "szukam",
    status: "aktualne",
    published_at: 8.days.ago,
    user: user
  },
  {
    title: "Oferuję korepetycje z angielskiego",
    description: "Magister filologii angielskiej. Przygotowanie do matury, egzaminów.",
    budget: 60,
    location: "Łódź",
    category: "Edukacja",
    contact_method: "email",
    ad_type: "oferuję",
    status: "aktualne",
    published_at: 6.days.ago,
    user: user
  },
  {
    title: "Sprzedam biurko komputerowe",
    description: "Duże biurko z szufladami, stan bardzo dobry.",
    budget: 200,
    location: "Katowice",
    category: "Meble",
    contact_method: "email",
    ad_type: "oferuję",
    status: "aktualne",
    published_at: 12.days.ago,
    user: user
  },
  {
    title: "Poszukuję telewizora 40 cali",
    description: "Chętnie odkupię używany TV LED w dobrym stanie.",
    budget: 700,
    location: "Rzeszów",
    category: "Elektronika",
    contact_method: "telefon",
    ad_type: "szukam",
    status: "aktualne",
    published_at: 10.days.ago,
    user: user
  },
  {
    title: "Szukam transportu mebli",
    description: "Potrzebuję przewieźć kanapę i łóżko z Warszawy do Łodzi.",
    budget: 400,
    location: "Warszawa",
    category: "Usługi",
    contact_method: "telefon",
    ad_type: "szukam",
    status: "aktualne",
    published_at: 7.days.ago,
    user: user
  },
  {
    title: "Sprzedam zestaw książek fantasy",
    description: "10 książek, stan idealny, wysyłka lub odbiór osobisty.",
    budget: 120,
    location: "Toruń",
    category: "Inne",
    contact_method: "email",
    ad_type: "oferuję",
    status: "aktualne",
    published_at: 4.days.ago,
    user: user
  },
  {
    title: "Oddam monitor komputerowy",
    description: "Monitor 24 cale, sprawny, drobne rysy na obudowie.",
    budget: 0,
    location: "Białystok",
    category: "Elektronika",
    contact_method: "telefon",
    ad_type: "oferuję",
    status: "aktualne",
    published_at: 9.days.ago,
    user: user
  },
  {
    title: "Szukam pracy dorywczej",
    description: "Może być sprzątanie, wykładanie towaru, pomoc w ogrodzie.",
    budget: 30,
    location: "Lublin",
    category: "Usługi",
    contact_method: "email",
    ad_type: "szukam",
    status: "aktualne",
    published_at: 13.days.ago,
    user: user
  }
])
