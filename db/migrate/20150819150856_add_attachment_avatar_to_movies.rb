class AddAttachmentAvatarToMovies < ActiveRecord::Migration
  def self.up
    change_table :movies do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :movies, :avatar
  end
end
