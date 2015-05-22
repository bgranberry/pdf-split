
class PdfSplitter
    def split (in_file, range)
        raw_file_name = /^\w+/.match(in_file)

        `pdftk #{in_file} cat #{range} output #{raw_file_name}_pages#{range}.pdf`
    end
end

splitter = PdfSplitter.new.split("multi_pdf.pdf", "2-5")