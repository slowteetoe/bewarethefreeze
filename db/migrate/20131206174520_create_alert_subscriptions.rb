class CreateAlertSubscriptions < ActiveRecord::Migration
  def change
    create_table :alert_subscriptions do |t|
      t.references :location, index: true
      t.string :email
      t.boolean :active
      t.string :sms

      t.timestamps
    end
    add_index :alert_subscriptions, :email
  end
end
