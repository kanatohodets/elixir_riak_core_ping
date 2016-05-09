defmodule Pingring.Mixfile do
  use Mix.Project

  def project do
    [app: :pingring,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [mod: {Pingring.App, []},
     applications: [:riak_core, :logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:poolboy, "~> 0.8.1-p3", hex: :basho_poolboy},
      {:riak_core, "~> 2.2", hex: :riak_core_ng}
    ]
  end
end
