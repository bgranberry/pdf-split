#!/usr/bin/env ruby
require 'pry'

class PdfSplitter
  def cli_extract(in_file, range)
    puts split(in_file, range)
  end

  private
  def extract(in_file, range)
    #binding.pry
    `pdftk #{in_file} cat #{range} output -`

  end
end

splitter = PdfSplitter.new.cli_extract(ARGV[0], ARGV[1])