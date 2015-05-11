class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :start
      t.datetime :end
      t.integer :event_type_id
      t.string :url
      t.boolean :all_day

      t.timestamps null: false
    end
  end
end
