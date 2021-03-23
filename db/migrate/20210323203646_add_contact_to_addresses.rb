class AddContactToAddresses < ActiveRecord::Migration[6.1]
  def change
    add_reference :addresses, :contact, null: true, foreign_key: true
  end
end
