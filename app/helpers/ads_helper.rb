module AdsHelper
  def available_categories
    [
      "Motoryzacja",
      "Nieruchomości",
      "Praca",
      "Dom i ogród",
      "Elektrnika",
      "Moda",
      "Zwierzęta",
      "Inne"
    ].sort
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
