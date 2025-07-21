
defmodule RecruiterAI.MixProject do
  use Mix.Project

  def project do
    [
      app: :recruiter_ai,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :httpoison],
      mod: {RecruiterAI, []}
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 1.8"},
      {:jason, "~> 1.2"}
    ]
  end
end
