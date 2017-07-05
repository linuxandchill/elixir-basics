defmodule TwitchIrc.Mixfile do
  use Mix.Project

  def project do
    [app: :twitch_irc,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # We need to add our dependencies as applications
  def application do
    [extra_applications: [:logger, :exirc, :httpoison],
     mod: {TwitchIrc.Application, []}]
  end

  # Dependencies declaration
  defp deps do
    [{:exirc, "~> 1.0"}, {:httpoison, "~> 0.11"}, {:poison, "~> 3.1.0"}]
  end
end
