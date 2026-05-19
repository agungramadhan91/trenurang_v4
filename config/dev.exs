import Config

config :logger, :default_handler, level: :debug

config :trenurang_core, TrenurangCore.Repo,
  username: System.get_env("DB_USERNAME", "postgres"),
  password: System.get_env("DB_PASSWORD", "postgres"),
  hostname: System.get_env("DB_HOST", "localhost"),
  database: "trenurang_dev",
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
