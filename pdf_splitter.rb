require 'docsplit'

# Pass page number, and it splits that page into a seperate pdf file
class PdfSplitter
  def pdf_split(file, page_number)
    Docsplit.extract_pages(file, :pages => 2..3)
  end
end

test_splitter = PdfSplitter.new

test_splitter.pdf_split('multi_pdf.pdf', 1)



