class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      
      t.string :name
      t.integer :age
      t.string :gender
      t.string :race
      t.string :orientation
      t.string :past_relationship_status
      
      t.string :location
      t.string :profession
      t.string :hobbies
      t.string :spirituality

      t.integer :match_age
      t.string :match_gender
      t.string :match_race
      t.string :match_past_relationship_status
      t.string :match_spirituality

      t.timestamps
    end
  end
end
