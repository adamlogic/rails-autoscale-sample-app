release: bundle exec rails db:migrate

web: bundle exec rails server

# For worker dynos, RAILS_MAX_THREADS is overridden by WORKER_THREADS/WORKER_LOW_THREADS if available.
# RAILS_MAX_THREADS is used by Sidekiq for concurrency and by Rails for the database pool.
worker: RAILS_MAX_THREADS=${WORKER_THREADS:-${RAILS_MAX_THREADS:-5}} bundle exec sidekiq -q urgent -q default
worker-low: RAILS_MAX_THREADS=${WORKER_LOW_THREADS:-${RAILS_MAX_THREADS:-5}} bundle exec sidekiq -q low
