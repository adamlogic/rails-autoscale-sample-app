Rails.application.routes.draw do
  if defined?(Delayed)
    mount Delayed::Web::Engine, at: '/jobs'
  end

  if defined?(Sidekiq)
    require 'sidekiq/web'
    mount Sidekiq::Web => '/jobs'
  end

  if defined?(Resque)
    require 'resque/server'
    mount Resque::Server.new, :at => '/jobs'
  end

  if defined?(Que)
    require "que/web"
    mount Que::Web => "/jobs"
  end

  root to: 'home#show'
end
