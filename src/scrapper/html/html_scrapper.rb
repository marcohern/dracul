
require_relative '../scrapper.rb'

module Dracul
  module Scrappers
    module Html
      class HtmlScrapper < Scrapper

        def scrap(url, options)
          validate_options(options)
        end

      end
    end
  end
end