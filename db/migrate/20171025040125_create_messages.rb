class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.bigint :user1
      t.bigint :user2
      t.boolean :status
      t.string :content

      t.timestamps
    end
  end
end
