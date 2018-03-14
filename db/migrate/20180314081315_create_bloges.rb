class CreateBloges < ActiveRecord::Migration[5.1]
  def change
    create_table :bloges do |t|

      t.timestamps
    end
  end
end
