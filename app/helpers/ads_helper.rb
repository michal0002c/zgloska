module AdsHelper
  def available_categories
    [
      "Remont",
      "Sprzątanie",
      "Transport",
      "Naprawa",
      "Opieka nad dziećmi",
      "Korepetycje",
      "Inne"
    ]
  end

  def available_locations
    [
      "Warszawa", "Kraków", "Łódź", "Wrocław", "Poznań", "Gdańsk", "Szczecin",
      "Bydgoszcz", "Lublin", "Katowice", "Białystok", "Gdynia", "Częstochowa",
      "Radom", "Rzeszów", "Toruń", "Sosnowiec", "Kielce", "Gliwice", "Zabrze",
      "Olsztyn", "Opole", "Zielona Góra", "Gorzów Wielkopolski"
    ]  
  end
end
