release: bundle exec rails db:migrate

web: bundle exec rails server

# For worker dynos, override RAILS_MAX_THREADS with the configured WORKER_CONCURRENCY value.
# RAILS_MAX_THREADS is automatically used for Sidekiq concurrency and Rails' database pool,
# and this setup allows independent concurrency control between web and worker dynos.
worker: RAILS_MAX_THREADS=${WORKER_CONCURRENCY} ./bin/worker.sh
