defmodule TrenurangCore.RepoTest do
  use ExUnit.Case, async: true

  test "repo connects and PostGIS is available" do
    result = TrenurangCore.Repo.query!("SELECT PostGIS_Version()")
    assert result.rows != []
  end
end
