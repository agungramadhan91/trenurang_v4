.PHONY: setup db.create db.drop db.migrate db.reset db.seed \
        server test lint format console

# Setup awal project
setup:
	mix deps.get
	mix db.create
	mix ecto.migrate

# Database
db.create:
	mix ecto.create
	PGPASSWORD=postgres psql -U postgres -h localhost -d trenurang_dev -c "CREATE EXTENSION IF NOT EXISTS postgis;"
	PGPASSWORD=postgres psql -U postgres -h localhost -d trenurang_test -c "CREATE EXTENSION IF NOT EXISTS postgis;" || true

db.drop:
	mix ecto.drop

db.migrate:
	mix ecto.migrate

db.rollback:
	mix ecto.rollback

db.reset:
	mix ecto.drop && mix ecto.create && mix ecto.migrate

db.seed:
	mix run apps/trenurang_core/priv/repo/seeds.exs

# Development
server:
	mix phx.server

console:
	iex -S mix

# Test
test:
	mix test

test.watch:
	mix test.watch

# Code quality
lint:
	mix credo

format:
	mix format