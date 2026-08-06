require_relative "boot"
require "rails/all"
Bundler.require(*Rails.groups)

# will_paginate 3.3.1 (未メンテナンス) が Ruby 4.0 の frozen string literal
# 非推奨警告 (chilled string warning) を出すため、そのメッセージのみ抑制する。
module WillPaginateWarningFilter
  def warn(message, category: nil, **kwargs)
    return if message.include?("will_paginate") && message.include?("frozen")

    super
  end
end
Warning.singleton_class.prepend(WillPaginateWarningFilter)

module SampleApp
  class Application < Rails::Application
    config.load_defaults 8.0
    config.active_storage.variant_processor = :mini_magick
  end
end
