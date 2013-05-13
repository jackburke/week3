class CreateRps < ActiveRecord::Migration
  def change
    create_table :rps do |t|
      t.string :play
      t.string :string

      t.timestamps
    end
  end
end
