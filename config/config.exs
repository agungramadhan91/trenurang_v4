import Config

config :trenurang_core, ecto_repos: [TrenurangCore.Repo]

config :logger, :default_handler, level: :info

config :logger, :default_formatter,
  format: "$date $time [$level] $metadata$message\n",
  metadata: [:request_id]

import_config "#{config_env()}.exs"
