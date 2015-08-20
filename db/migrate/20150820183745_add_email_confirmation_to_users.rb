class AddEmailConfirmationToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      ## Confirmable
       t.string   :confirmation_token
       t.datetime :confirmed_at
       t.datetime :confirmation_sent_at
       t.string   :unconfirmed_email # Only if using reconfirmable
    end
  end

  def self.down
    remove_string :users, :confirmation_token
    remove_string :users, :unconfirmed_email
    remove_string :datetime, :confirmed_at
    remove_string :datetime, :confirmation_sent_at
    
  end
end
