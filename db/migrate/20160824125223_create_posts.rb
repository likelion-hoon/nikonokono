class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string :title
      t.text :content
      t.integer :user_id
      t.references :user, index: true, foreign_key: true
      t.string :video_url
      t.string :singer
      t.string :song
      t.integer :hit, default: 0       # 조회수
      t.integer :reconum, default: 0   # 추천수
      t.integer :initNum, default: 0 #추천을위한 초기값

      t.timestamps null: false
    end
  end
end
