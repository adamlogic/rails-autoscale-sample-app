Rails.application.routes.draw do
  if defined?(DelayedJobWeb)
    match "/workers" => DelayedJobWeb, :anchor => false, :via => %i[get post] if defined?(Delayed)
  end

  if defined?(Sidekiq)
    require "sidekiq/web"
    mount Sidekiq::Web => "/workers"
  end

  if defined?(Resque)
    require "resque/server"
    mount Resque::Server.new, at: "/workers"
  end

  # if defined?(Que)
  #   require "que/web"
  #   mount Que::Web => "/workers"
  # end

  resources :jobs
  resources :reqs
  get "req", to: "reqs#create"

  root to: redirect("reqs/new")
end
