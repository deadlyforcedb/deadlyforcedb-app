class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :suffix
      t.integer :age
      t.string :race
      t.string :gender
      t.string :photo_url
      t.string :summary
      t.date :date
      t.time :time
      t.string :address
      t.string :city
      t.string :state
      t.float  :latitude
      t.float  :longitude
      t.string :zip
      t.string :county
      t.string :leo_agency
      t.string :cause_of_death
      t.string :suspected_weapon
      t.string :suspected_weapon_detail
      t.string :mental_illness
      t.string :report_url
      t.timestamps null: false
    end
  end
end
