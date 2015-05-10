class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string description :name

      t.timestamps null: false
    end
  end
end
