import Config

if config_env() == :prod do
  config :trenurang_core, TrenurangCore.Repo,
    url: System.fetch_env!("DATABASE_URL"),
    pool_size: String.to_integer(System.get_env("POOL_SIZE", "10"))

  config :trenurang_adapters, :telegram,
    bot_token: System.fetch_env!("TELEGRAM_BOT_TOKEN"),
    webhook_url: System.fetch_env!("WEBHOOK_URL")
end
