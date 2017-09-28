class CreateFrats < ActiveRecord::Migration[5.1]
  def change
    create_table :frats do |t|
      t.string :name

      t.timestamps
    end
  end
end
