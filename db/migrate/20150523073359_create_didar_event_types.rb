class CreateDidarEventTypes < ActiveRecord::Migration
  def change
    create_table :didar_event_types do |t|
      t.string :name
      t.text :description
      t.string :color

      t.timestamps null: false
    end
  end
end
