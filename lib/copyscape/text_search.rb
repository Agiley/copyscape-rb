require 'copyscape/request_base'

module Copyscape
  
  class TextSearch < RequestBase

    def initialize(text, full_comparisons = 0, encoding = 'UTF-8')
      http_response = post_response(:o => 'csearch', :t => text, :c => full_comparisons, :e => encoding)
      @response = Response.new(http_response)
    end

  end
  
end