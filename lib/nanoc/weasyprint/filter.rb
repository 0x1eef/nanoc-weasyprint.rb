module Nanoc::WeasyPrint
  class Filter < Nanoc::Filter
    require "fileutils"
    require_relative "spawn"
    include Spawn
    include FileUtils

    identifier :weasyprint
    type text: :binary

    ##
    # @return [Array<String>]
    #  The default command line options forwarded to weasyprint.
    def self.default_argv
      @default_argv ||= []
    end

    ##
    # @param [String] content
    #  HTML contnet.
    #
    # @param [Hash] options
    #  Filter options.
    #
    # @return [void]
    def run(content, options = {})
      spawn "weasyprint",
            [*default_argv, *(options[:argv] || []), temporary_file(content).path, output_filename],
            log: File.join(tmpdir, "weasyprint.log")
    end

    private

    def default_argv
      self.class.default_argv
    end

    def temporary_file(content)
      mkdir_p(tmpdir)
      file = Tempfile.new(File.basename(item.identifier.to_s), tmpdir)
      file.write(content)
      file.tap(&:flush)
    end

    def tmpdir
      File.join(Dir.getwd, "tmp", "weasyprint")
    end
  end
end
