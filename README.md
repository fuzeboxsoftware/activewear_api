# ActivewearApi

This gem provides Activewear API integration for Ruby on Rails

## Getting started
Run the bundle in the command line to install dependecies.

Use the activewear_api in the command line to call methods.

For example, to run the productsFilterResults method:
./activewear_cli -m productsFilterResults -f B00760004

The following methods are available:
- productsGetAll
- productsFilterResults -f B00760004
- productsFilterByStyles -f 00760
- productsFilterByStyleId -f 39
- productsFilterByPartNumber -f 00760
- productsFilterWarehouses -w IL -f B00760004
- productsFilterFields -l Sku,Gtin,Qty -f B00760004

## Requirements
This gem requires Ruby 3.1+ and Rails 7.0+