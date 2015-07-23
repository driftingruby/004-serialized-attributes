class User < ActiveRecord::Base
  serialize :properties, Hash
after_initialize do
  %w(twitter_handle github_username).each do |property|
    define_singleton_method property do
      properties[property]
    end
  end
end
end
