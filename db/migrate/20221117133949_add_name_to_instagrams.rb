class AddNameToInstagrams < ActiveRecord::Migration[6.1]
  def change
    add_column :instagrams, :name, :string
  end
end
