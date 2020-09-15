# frozen_string_literal: true

class CreateRoomLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :room_logs do |t|
      t.string   :room_uid
      t.string   :user_id
      t.string   :ip
      t.datetime :created_at, null: false
      t.string   :status
    end
  end
end
