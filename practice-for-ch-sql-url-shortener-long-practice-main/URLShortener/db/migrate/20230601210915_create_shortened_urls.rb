class CreateShortenedUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :shorten_urls do |t|
      t.string :short_url, null: false
      t.string :long_url, null: false, index: {unique: true}
      t.references :url_user, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
