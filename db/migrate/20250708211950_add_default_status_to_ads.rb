class AddDefaultStatusToAds < ActiveRecord::Migration[7.0] # lub Twoja wersja
  def change
    change_column_default :ads, :status, from: nil, to: "aktualne"
    reversible do |dir|
      dir.up { Ad.where(status: nil).update_all(status: "aktualne") }
    end
  end
end
