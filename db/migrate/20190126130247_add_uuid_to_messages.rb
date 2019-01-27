class AddUuidToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :uuid, :uuid, default: 'uuid_generate_v4()'
  end
end
