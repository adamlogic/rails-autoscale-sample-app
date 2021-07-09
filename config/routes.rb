Rails.application.routes.draw do
  if defined?(Delayed)
    match "/workers" => DelayedJobWeb, :anchor => false, :via => [:get, :post]
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
  resources :reqs

  root to: redirect('jobs/new')
end
