# config/initializer/pagy.rb

require 'pagy/extras/array'
require 'pagy/extras/bootstrap'

Pagy::VARS[:items] = ENV['ITEM_PER_PAGE'] || 3