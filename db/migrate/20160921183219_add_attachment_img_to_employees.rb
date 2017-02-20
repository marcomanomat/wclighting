class AddAttachmentImgToEmployees < ActiveRecord::Migration
  def self.up
    change_table :employees do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :employees, :img
  end
end
