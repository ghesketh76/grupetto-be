class CreateJoinrides < ActiveRecord::Migration[6.0]
  def change
    create_table :joinrides do |t|
      t.references :ride, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
