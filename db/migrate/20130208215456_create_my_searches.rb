class CreateMySearches < ActiveRecord::Migration
  def self.up
    create_table :my_searches do |t|
      t.string :title
      t.integer :times
      t.timestamps
    end
  end

  def self.down
    drop_table :my_searches
  end
end
