Rails.application.routes.draw do
  if defined?(Delayed)
    mount Delayed::Web::Engine, at: '/workers'
  end

  if defined?(Sidekiq)
    require 'sidekiq/web'
    mount Sidekiq::Web => '/workers'
  end

  if defined?(Resque)
    require 'resque/server'
    mount Resque::Server.new, :at => '/workers'
  end

  if defined?(Que)
    require "que/web"
    mount Que::Web => "/workers"
  end

  resources :jobs

  root to: redirect('jobs/new')
end
