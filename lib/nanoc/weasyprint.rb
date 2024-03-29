##
# nanoc-weasyprint.rb is a [nanoc](https://nanoc.app)
# filter that integrates [weasyprint](https://github.com/Kozea/WeasyPrint)
# into nanoc. The filter can create PDF documents
# from markdown and other markup languages during the
# [nanoc](https://nanoc.app) build process.
module Nanoc::WeasyPrint
  require_relative "weasyprint/filter"

  ##
  # @return (see Nanoc::WeasyPrint::Filter.default_argv)
  def self.default_argv
    Filter.default_argv
  end
end
