require 'faraday'
require 'faraday/net_http'

module ActivewearApi
  class << self
    attr_accessor :account_number, :api_key
    attr_reader :api_url
    
    # sets account number and api key passed
    def config
      yield self
    end

    # set our api url
    def api_url
      api_url = "https://api.ssactivewear.com/v2/"
    end

    # Return request of response
    def callUri(uri)
      conn = Faraday.new(url: ActivewearApi.api_url + uri) do |c|
        c.adapter :net_http
        c.request :authorization, :basic, ActivewearApi.account_number, ActivewearApi.api_key
      end
  
      response = conn.get
      
      return JSON(response.body)
    end

    # Return all products
    def productsGetAll()
      return callUri 'products'
    end

    # Return filtered products
    def productsFilterResults(filters)
      return ActivewearApi.callUri 'products/' + filters
    end

    # Return products filtered by styles
    def productsFilterByStyles(filters)
        return ActivewearApi.callUri 'products/?style=' + filters
    end

    # Return products filtered by style id
    def productsFilterByStyleId(filters)
        return ActivewearApi.callUri 'products/?styleid=' + filters
    end

    # Return products filtered by part number
    def productsFilterByPartNumber(filters)
        return ActivewearApi.callUri 'products/?productnumber=' + filters
    end

    # Return products filtered by warehouses
    def productsFilterWarehouses(warehouses, filters = '')
        uri = 'products/'

        if !filters.empty?
            uri = uri + filters
        end

        uri = uri + '?Warehouses=' + warehouses

        return ActivewearApi.callUri uri
    end

    # Return products filtered by fields
    def productsFilterFields(fields, filters = '')
        uri = 'products/'

        if !filters.empty?
            uri = uri + filters
        end

        uri = uri + '?fields=' + fields

        return ActivewearApi.callUri uri
    end

  end
end