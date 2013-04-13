class CreateTamps < ActiveRecord::Migration
  def change
    create_table :tamps do |t|

      t.timestamps
    end
  end
end
