defmodule TrenurangWorkers.MixProject do
  use Mix.Project

  def project do
    [
      app: :trenurang_workers,
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

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:trenurang_core, in_umbrella: true},
      {:trenurang_events, in_umbrella: true},
      {:trenurang_entity, in_umbrella: true},
      {:trenurang_trust, in_umbrella: true},
      {:trenurang_graph, in_umbrella: true},
      {:trenurang_billing, in_umbrella: true},
      {:trenurang_ecosystem, in_umbrella: true},
      {:oban, "~> 2.18"}
    ]
  end
end
