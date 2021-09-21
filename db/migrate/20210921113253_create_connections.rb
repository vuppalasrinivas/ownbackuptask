class CreateConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :connections do |t|
      t.string :name
      t.string :connection_type
      t.integer :max_requests
      t.string :password

      t.timestamps
    end
  end
end
