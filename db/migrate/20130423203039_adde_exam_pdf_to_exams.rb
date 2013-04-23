class AddeExamPdfToExams < ActiveRecord::Migration
  def self.up
    add_column :exams, :exam_pdf, :string, :default => ''
  end

  def self.down
    remove_column :exams, :exam_pdf
  end
end
