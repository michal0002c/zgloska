class CreateAds < ActiveRecord::Migration[8.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.text :description
      t.decimal :budget
      t.string :location
      t.string :category
      t.string :status
      t.string :contact_method
      t.string :ad_type
      t.datetime :published_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
