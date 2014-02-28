class CreateStuds < ActiveRecord::Migration
  def change
    create_table :studs do |t|
      t.string :firstname
      t.string :lastname
      t.string :github

      t.timestamps
    end
  end
end
