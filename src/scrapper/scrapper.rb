module Dracul
  module Scrappers
    class Scrapper
        
      DEFAULT_HEADERS = {
        'accept' => 'text/html'
      }

      @agent = nil
      @headers = nil

      def initialize
        @agent = Mechanize.new
      end

      def validate_options(options)
        if !options.is_a? Hash
          raise TypeError.new "options must be a hash."
        end
        if options.key?(:headers) and !options[:headers].is_a? Hash
          raise TypeError.new "options[:headers] must be a hash."
        end
      end

      def merge_headers(options)
        validate_options options
        headers = DEFAULT_HEADERS
        if options.key?(:headers)
          headers.merge!(options[:headers])
        end
        headers
      end

      def scrap(url, options = {})
        validate_options options
      end

    end
  end
end