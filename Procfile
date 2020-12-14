release: bundle exec rails db:migrate
web: DB_POOL=${WEB_PG_POOL-${RAILS_MAX_THREADS:-5}} bundle exec rails server
worker: DB_POOL=${WORKER_PG_POOL:-${WORKER_THREADS:-5}} ./bin/worker.sh
