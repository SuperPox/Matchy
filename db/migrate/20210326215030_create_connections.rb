class CreateConnections < ActiveRecord::Migration[6.1]
  def change
    create_table :connections do |t|
      t.string :match_accepted
      t.string :match_rejected
      t.string :message
      t.integer :you_match_id
      t.integer :match_you_id

      t.timestamps
    end
  end
end
