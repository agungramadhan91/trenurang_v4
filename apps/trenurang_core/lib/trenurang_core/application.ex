defmodule TrenurangCore.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      TrenurangCore.Repo
    ]

    opts = [strategy: :one_for_one, name: TrenurangCore.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
