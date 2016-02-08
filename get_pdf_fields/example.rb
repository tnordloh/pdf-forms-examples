#!/usr/bin/env ruby

require "bundler/setup"
require "pdf-forms"

pdftk = PdfForms.new

test_pdf = File.expand_path(File.dirname(__FILE__) + "/../fixtures/OK_LIEN.pdf")

pdftk.get_field_names(test_pdf).each { |field| p field }


