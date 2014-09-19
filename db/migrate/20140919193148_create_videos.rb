class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :url, null: false
      t.string :title, null: false
      t.text :description

      t.timestamps
    end
  end
end
