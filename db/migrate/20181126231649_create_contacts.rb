class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :first
      t.string :last
      t.string :company
      t.string :address
      t.string :email
      t.string :home
      t.string :cell
      t.string :work

      t.timestamps
    end
  end
end
