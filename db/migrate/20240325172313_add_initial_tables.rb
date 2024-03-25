class AddInitialTables < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.string :subdomain
      t.string :owner_email
      t.references :plan
      t.datetime :signed_up_at
    end

    create_table :plans do |t|
      t.string :name
      t.integer :monthly_price
    end

    create_table :orders do |t|
      t.references :account
      t.timestamps
    end
  end
end
