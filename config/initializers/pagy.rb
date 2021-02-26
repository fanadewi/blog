# config/initializer/pagy.rb

require 'pagy/extras/array'

Pagy::VARS[:items] = ENV['ITEM_PER_PAGE'] || 3