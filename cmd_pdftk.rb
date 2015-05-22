in_file = 'multi_pdf.pdf'
range = 1..2
range_s = range.to_s.gsub('..', '-')
`pdftk #{in_file} cat #{range_s} output pages#{range_s}.pdf`
# res = `cmd`.chomp