class UploadController < ApplicationController
  def new

  end

  def upload
    begin
      uploaded_io = params[:path]
      file_name = uploaded_io.original_filename
      file_path = Rails.root.join('public', 'uploads', file_name)
      File.open(file_path, 'wb') do |file|
        file.write(uploaded_io.read)
      end
      @notice = 'Uploaded successfully'
      @file_name = file_name
    rescue
      render :new
    end
  end
end
