class CreateTutorials < ActiveRecord::Migration
  def self.up
    create_table :tutorials do |t|
      t.string :title
      t.text :lesson
      t.string :url
      t.string :image
      t.string :posted_by

      t.timestamps
    end
  end

  def self.down
    drop_table :tutorials
  end
end
