#!/usr/bin/env ruby

require "bundler/setup"
require "pdf-forms"

pdftk = PdfForms.new

base_path = File.expand_path(File.dirname(__FILE__) + "/../fixtures")
test_pdf = File.expand_path(File.dirname(__FILE__) + "/../fixtures/OK_LIEN.pdf")

data = Hash.new
puts "opened hash"
pdftk.get_field_names(test_pdf).each_with_index { |field, i| 
  p "adding #{field}"
  data[field] = i
}

p "merging"
pdftk.fill_form test_pdf, base_path + "/OK_FILLED.pdf", {:LIEN_other_name => "lon"}
