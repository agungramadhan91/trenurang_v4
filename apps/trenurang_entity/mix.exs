defmodule TrenurangEntity.MixProject do
  use Mix.Project

  def project do
    [
      app: :trenurang_entity,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.19",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:trenurang_core, in_umbrella: true},
      {:trenurang_events, in_umbrella: true}
    ]
  end
end
