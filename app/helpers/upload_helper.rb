module UploadHelper
  def read_xls file_io
    s = Roo::Excelx.new(file_io.to_s)
    s.default_sheet = s.sheets.first
    puts s.cell(1,1)
  end
end
