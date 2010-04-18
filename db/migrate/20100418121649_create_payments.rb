class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.string :country
      t.integer :year
      t.string :recipient
      t.string :global_recipient
      t.string :name
      t.string :zipcode
      t.string :town
      t.string :geo1
      t.string :geo2
      t.string :geo3
      t.string :country_recipient
      t.decimal :direct, :precision => 20, :scale => 2
      t.decimal :indirect, :precision => 20, :scale => 2
      t.decimal :rural, :precision => 20, :scale => 2
      t.decimal :total, :precision => 20, :scale => 2
      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end
