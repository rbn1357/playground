class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :message
      t.string :author

      t.timestamps
    end
  end
end
