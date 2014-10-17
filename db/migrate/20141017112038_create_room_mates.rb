class CreateRoomMates < ActiveRecord::Migration
  def change
    create_table :room_mates do |t|

      t.timestamps
    end
  end
end
