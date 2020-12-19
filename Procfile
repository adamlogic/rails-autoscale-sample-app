release: bundle exec rails db:migrate

web: bundle exec rails server

# For worker dynos RAILS_MAX_THREADS is overridden by WORKER_THREADS if available
worker: RAILS_MAX_THREADS=${WORKER_THREADS:-${RAILS_MAX_THREADS:-5}} ./bin/worker.sh
