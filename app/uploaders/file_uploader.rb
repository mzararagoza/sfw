# encoding: utf-8
class FileUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
     %w(doc docx log msg odt pages rtf tex txt wpd wps bmp dds gif jpg png psd pspimage tga thm tif tiff yuv pdf)
  end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  # # do something
  # end

end

