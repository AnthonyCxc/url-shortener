class CreateUrl1s < ActiveRecord::Migration[5.1]
  def change
    create_table :url1s do |t|
      t.string :long_url1
      t.string :short_url1

      t.timestamps
    end
  end
end
