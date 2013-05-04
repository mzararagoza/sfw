class Document < ActiveRecord::Base
  attr_accessible :name, :description, :pdf_upload
  
  mount_uploader :pdf_upload, FileUploader

end

