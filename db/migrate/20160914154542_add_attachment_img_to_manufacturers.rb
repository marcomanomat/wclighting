class AddAttachmentImgToManufacturers < ActiveRecord::Migration
  def self.up
    change_table :manufacturers do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :manufacturers, :img
  end
end
