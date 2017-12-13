class CreatePassengers < ActiveRecord::Migration[5.0]
  def change
    create_table :passengers do |t|
      t.string   "first_name"
      t.string   "last_name"
      t.string   "middle_name"
      t.string   "frequent_flyer_number"
      t.string   "gender"
      t.datetime "dob"
      t.string   "email"
      t.string   "telephone"
      t.timestamps
    end
  end
end
