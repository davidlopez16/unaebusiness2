class CreatePerfilempresas < ActiveRecord::Migration[5.2]
  def change
    create_table :perfilempresas do |t|

      t.timestamps
    end
  end
end
