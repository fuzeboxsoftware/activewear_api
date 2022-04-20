require_relative 'lib/activewear_api'

require 'faraday'
require 'faraday/net_http'

ActivewearApi.config do |c|
  c.account_number = '12762'
  c.api_key = '9f8784ab-0f07-4a0c-909d-f02ca003b3ff'
end


#puts ActivewearApi.api_url
products = ActivewearApi.productsFilterResults("B00760004")

#puts products

products.each do |product|
    puts product['sku']
end

