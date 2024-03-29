module Nanoc::WeasyPrint
  ##
  # @return (see Nanoc::WeasyPrint::Filter.default_argv)
  def self.default_argv
    Filter.default_argv
  end
  require_relative "weasyprint/filter"
end
