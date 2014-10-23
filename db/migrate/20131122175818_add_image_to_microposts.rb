class AddImageToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :image, :String
  end
end
