class CreateRetTweents < ActiveRecord::Migration
  def self.up
    create_table :ret_tweents do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :ret_tweents
  end
end
