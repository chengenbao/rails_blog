class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.datetime :published_at
      t.string :excerpt
      t.string :location

      t.timestamps
    end
  end
end
