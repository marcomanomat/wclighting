class AddAttachmentImgToCompanies < ActiveRecord::Migration[5.0]
  def self.up
    change_table :companies do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :companies, :img
  end
end
