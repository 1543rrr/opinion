class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.bigint :user_id
      t.bigint :leply_id

      t.timestamps
    end
  end
end
