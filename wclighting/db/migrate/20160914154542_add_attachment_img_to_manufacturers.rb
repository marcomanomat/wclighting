class AddAttachmentLogoToManufacturers < ActiveRecord::Migration
  def self.up
    change_table :manufacturers do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :manufacturers, :logo
  end
end
